#!/usr/bin/env python3
"""Check that the public record of a component carries none of the names that are not allowed in it.

It reads, in this order:
- the title and the body of the pull request;
- the message, the author and the committer of every commit the pull request or the push adds;
- the name and the text of every tracked file.

The names are kept encoded, so this file does not carry them. The log shows only where a name is,
never the name itself.

Environment: PR_TITLE, PR_BODY, BASE_SHA, HEAD_SHA (all optional).
"""
import base64
import os
import re
import subprocess
import sys

ENCODED = "Y1tsXWF1ZGV8YVtuXXRocm9waWN8b1twXWVuYWl8Y2hhdFtnXXB0fFxiZ1twXXRbLVxzXT9bMC05b118Z3B0W2Jdb3R8b2FpLXNlYXJjaFtiXW90fGdlW21daW5pfGNvW3BdaWxvdHxkZWVbcF1zZWVrfFxibFtsXWFtYVxifG1pW3NddHJhbHxwZXJwW2xdZXhpdHlcLmFpfFxicVt3XWVuXGJ8XGJnW3Jdb2tcYnxjby1hdXRob3JlZC1bYl15fGdlbmVyYXRlZCB3aXRoIFxbP2NbbF1hdWRlfFxVMDAwMUY5MTYgZ2VuZXJhdGVk"
PATTERN = re.compile(base64.b64decode(ENCODED).decode("utf-8"), re.IGNORECASE)
MAX_BYTES = 5_000_000


def git(*args):
    return subprocess.run(["git", *args], capture_output=True, text=True).stdout


def commits(base, head):
    if not head:
        return []
    if base and set(base) != {"0"} and git("cat-file", "-t", base).strip() == "commit":
        return git("rev-list", f"{base}..{head}").split()
    return git("rev-list", "-1", head).split()


def main():
    problems = []

    for where, text in (("pull request title", os.environ.get("PR_TITLE", "")),
                        ("pull request body", os.environ.get("PR_BODY", ""))):
        if PATTERN.search(text or ""):
            problems.append(where)

    for sha in commits(os.environ.get("BASE_SHA", ""), os.environ.get("HEAD_SHA", "")):
        record = git("log", "-1", "--format=%an%n%ae%n%cn%n%ce%n%B", sha)
        if PATTERN.search(record):
            problems.append(f"commit {sha[:12]} (message, author or committer)")

    for path in git("ls-files", "-z").split("\0"):
        if not path:
            continue
        if PATTERN.search(path):
            problems.append(f"file name: {path}")
            continue
        try:
            with open(path, "rb") as handle:
                data = handle.read(MAX_BYTES)
        except OSError:
            continue
        if b"\0" in data[:8000]:
            continue
        for number, line in enumerate(data.decode("utf-8", "replace").splitlines(), 1):
            if PATTERN.search(line):
                problems.append(f"{path}:{number}")
                break

    if problems:
        print("The public record carries a name that is not allowed in it. Remove it and push again:")
        for item in problems[:200]:
            print(f"  - {item}")
        return 1
    print("Public record check passed.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
