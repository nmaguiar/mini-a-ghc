# mini-a-ghc
OpenAF mini-a + GitHub Copilot

At container startup, the image derives a GitHub token from `OAF_MODEL` using `/openaf/oafp`, logs `gh` in with that token, deletes `/tmp/token.txt`, and only then starts the `mini-a` entrypoint.

## Image security scans

[![.github/sec-build.svg](.github/sec-build.svg)](.github/sec-build.md)<br>
[![.github/sec-latest.svg](.github/sec-latest.svg)](.github/sec-latest.md)<br>
