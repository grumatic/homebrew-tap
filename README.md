# grumatic/tap

Homebrew formulae for **byj**, **byj-share** and **byj-a2a**, and their
release binaries:

- **byj** — brainyard's agent runtime on jolt
- **byj-share** — shares a byj, Claude Code or Codex session, a terminal, or
  one of byj's agents through the Brainyard Share relay
- **byj-a2a** — byj's agents over the Agent2Agent (A2A) protocol, and remote
  agents as byj's tools

All three are released for macOS (Apple silicon and Intel) and Linux (x86-64).

## Installing

```bash
brew tap grumatic/tap
brew install grumatic/tap/byj grumatic/tap/byj-share grumatic/tap/byj-a2a
```

No GitHub account or token is needed. byj-share runs on its own, to share a
Claude Code or Codex session or a terminal. byj-a2a is only needed to share
one of byj's agents or to reach byj's agents over A2A, and it runs byj to do
so.

Homebrew 7 loads a non-official tap's formulae only once they are trusted.
Installing them by their full names, as above, trusts those three. To use
bare names (`brew install byj`, `brew info byj-share`), trust the whole tap
first:

```bash
brew trust grumatic/tap
```

### Updating

```bash
byj update             # byj, byj-share and byj-a2a together
byj-share update       # on a machine with byj-share and no byj
```

Each is updated the way it was installed: a Homebrew install through
`brew upgrade`, which `byj update` runs for you, and a downloaded binary
swapped in place, checked against the release's `SHA256SUMS`. `byj update`
says what it will do to each before asking; beside a downloaded byj, it also
installs byj-share or byj-a2a when one is missing. `--rollback` goes back to the binaries the
last update replaced; a Homebrew install has none to go back to. `byj doctor`
lists the copies on your `PATH`, with each one's version and where it came
from, and points out an old one shadowed by another.

#### When `brew upgrade` says it is already installed

`brew upgrade` compares what is installed with the formula in your local
copy of this tap. If it says an older version is already installed, that
copy has not been refreshed since that release. Check which commit it is on
and where it fetches from:

```bash
git -C "$(brew --repo grumatic/tap)" log --oneline -1
git -C "$(brew --repo grumatic/tap)" remote -v
echo "HOMEBREW_NO_AUTO_UPDATE=$HOMEBREW_NO_AUTO_UPDATE"
```

Then refresh it and upgrade:

```bash
brew update
brew info grumatic/tap/byj | head -1     # the version this tap now has
brew upgrade grumatic/tap/byj grumatic/tap/byj-share grumatic/tap/byj-a2a
```

- **`HOMEBREW_NO_AUTO_UPDATE` is set:** `brew upgrade` never refreshes the
  tap on its own. Run `brew update` first, as above.
- **`brew update` says it failed to update `grumatic/tap`:** the tap was
  probably added with `git@github.com:grumatic/homebrew-tap.git`, from
  before the tap was public, and this machine cannot fetch over SSH. Point
  it at the public address, then run `brew update` again:

  ```bash
  git -C "$(brew --repo grumatic/tap)" remote set-url origin https://github.com/grumatic/homebrew-tap
  ```

`byj update` cannot do this for a byj older than 0.3.3, which refuses a
Homebrew install instead of running `brew upgrade`; upgrade it with
`brew` once, as above.

### Without Homebrew

Each release's binaries are on this repository's
[Releases](https://github.com/grumatic/homebrew-tap/releases) page, with a
`SHA256SUMS` to check them against:

```bash
v=0.3.4; p=macos-arm64          # or macos-amd64, linux-amd64
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
(`brew install openssl@3`). byj-share and byj-a2a are downloaded the same way,
as `byj-share-$v-$p` and `byj-a2a-$v-$p`, and need no `openssl@3`.

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

**Share a terminal or an agent:**

```bash
byj-share start term:work       # the tmux session "work", made if there is none
byj-share start agent:default   # byj's main agent, for the callers you invite
```

A terminal share is typed into from its page — by you, or by one coach you
hand the keyboard to — while everyone invited watches and chats beside it;
`--no-input` makes it view-only, and stopping the share leaves the tmux
session running. An agent share runs on your machine through byj-a2a: callers
you invite ask it on the share's page or from any A2A client, everyone on the
share sees the exchange, and `--max-messages` and `--max-cost` cap it (200
messages and $10 unless set).

**Keep track of it:**

```bash
byj-share status               # what is shared, where, who is watching
byj-share pause SHARE|REF      # viewers see nothing new until resume
byj-share stop SHARE|REF       # or --all
```

**More:** `--record` keeps a share for review when it ends, and
`byj-share record --turns 12-30` uploads a range of past turns for review;
several references to `byj-share start` share them as one group; and
`byj run --share class:CODE` shares into a class your instructor runs. Sharing
a session's screen, or a terminal, needs tmux. The full guide is at
<https://share.grumatic.com/docs>.

## Agents over A2A

`byj-a2a` lets other agents ask byj's agents, and gives byj other agents as
tools:

```bash
byj-a2a serve --expose explore,plan   # byj's agents, on loopback behind a token
byj-a2a card URL                      # what a remote agent offers
byj-a2a ask URL "a question"          # ask it from the terminal
byj-a2a mcp --peer NAME=URL           # a remote agent's skills as byj's tools (:mcp-servers)
```

## Where this comes from

The releases and `Formula/*.rb` are published here by brainyard-jolt's release
workflow — each release copied from the source repository, and the formulae
written from that copy by its `dev/brew-formula.sh` — and are not edited by
hand.
