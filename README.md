# grumatic/tap

Homebrew formulae for **byj** and **byj-share**, and their release binaries:

- **byj** — brainyard's agent runtime on jolt
- **byj-share** — shares a byj or Claude Code session through the Brainyard Share relay

Both are released for macOS (Apple silicon and Intel) and Linux (x86-64).

## Installing

```bash
brew tap grumatic/tap
brew install grumatic/tap/byj grumatic/tap/byj-share
```

No GitHub account or token is needed.

Homebrew 7 loads a non-official tap's formulae only once they are trusted.
Installing them by their full names, as above, trusts those two. To use
bare names (`brew install byj`, `brew info byj-share`), trust the whole tap
first:

```bash
brew trust grumatic/tap
```

`brew upgrade byj byj-share` updates them. `byj update` refuses a Homebrew
install and says so.

### Without Homebrew

Each release's binaries are on this repository's
[Releases](https://github.com/grumatic/homebrew-tap/releases) page, with a
`SHA256SUMS` to check them against:

```bash
v=0.3.1; p=macos-arm64          # or macos-amd64, linux-amd64
curl -fLO "https://github.com/grumatic/homebrew-tap/releases/download/v$v/byj-$v-$p"
curl -fLO "https://github.com/grumatic/homebrew-tap/releases/download/v$v/SHA256SUMS"
shasum -a 256 -c --ignore-missing SHA256SUMS
chmod +x "byj-$v-$p" && mv -f "byj-$v-$p" ~/.local/bin/byj
```

A binary installed this way updates itself with `byj update`, which reads
this repository's releases with no token. v0.3.0 is the exception: it looks in
the private source repository, so give it this one with
`:update-source "grumatic/homebrew-tap"` in `~/.brainyard/config.edn`, or
download v0.3.1 or later as above. On macOS byj needs Homebrew's `openssl@3`
(`brew install openssl@3`). byj-share is downloaded the same way, as
`byj-share-$v-$p`.

## Where this comes from

The releases and `Formula/*.rb` are published here by brainyard-jolt's release
workflow — each release copied from the source repository, and the formulae
written from that copy by its `dev/brew-formula.sh` — and are not edited by
hand.
