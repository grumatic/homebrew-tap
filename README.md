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

## Sharing your sessions

`byj-share` shares a coding-agent session — byj, Claude Code or Codex — with
people you invite. They watch it live in a browser: every turn, tool call and
answer, and its terminal when the session runs in tmux. Nothing runs on the
relay; the session stays on your machine.

**Sign in once** on each machine:

```bash
byj-share login        # shows a code and a link; approve the code in the browser
byj-share doctor       # checks the sign-in, the relay and tmux
```

**Share a session** — whichever fits how you work:

```bash
byj run --share link            # start a byj session, shared from the start
byj-share exec -- claude        # run Claude Code here, shared while it runs
byj-share exec -- byj run       # the same for byj

byj-share ls                    # sessions in this project you can share
byj-share start byj:latest      # share one that is already running
byj-share start claude:5f0c1d2e # a Claude Code session, by id (a prefix will do)
```

In a running byj session, `/share start` shares it. Each share prints its page
and two invite links: a **coach** link (watch, leave notes, and ask for a turn
you approve at the terminal) and a **watch** link (watch only). Make more links,
pause, or remove someone from the **Owner console** on the share's page.

**Keep track of it:**

```bash
byj-share status               # what is shared, where, who is watching
byj-share pause SHARE|REF      # viewers see nothing new until resume
byj-share stop SHARE|REF       # or --all
```

**More:** `--record` keeps a share for review when it ends, and
`byj-share record --turns 12-30` uploads a range of past turns for review;
several references to `byj-share start` share them as one group; and
`byj run --share class:CODE` shares into a class your instructor runs. The full
guide is at <https://share.grumatic.com/docs>.

## Where this comes from

The releases and `Formula/*.rb` are published here by brainyard-jolt's release
workflow — each release copied from the source repository, and the formulae
written from that copy by its `dev/brew-formula.sh` — and are not edited by
hand.
