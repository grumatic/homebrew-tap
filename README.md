# grumatic/tap

Homebrew formulae for [brainyard-jolt](https://github.com/grumatic/brainyard-jolt):

- **byj** — brainyard's agent runtime on jolt
- **byj-share** — shares a byj or Claude Code session through the Brainyard Share relay

Both are released for macOS (Apple silicon and Intel) and Linux (x86-64).

## Installing

The tap and the release assets are private, so Homebrew needs to reach both:

```bash
brew tap grumatic/tap git@github.com:grumatic/homebrew-tap.git   # an ssh key that can read this repo
brew trust grumatic/tap                                           # Homebrew 7 asks before using a tap
export HOMEBREW_GITHUB_API_TOKEN=…                                # a token that can read grumatic/brainyard-jolt
brew install grumatic/tap/byj grumatic/tap/byj-share
```

`HOMEBREW_GITHUB_API_TOKEN` must be set whenever Homebrew downloads a new
version (`brew install`, `brew upgrade`): a formula fetches its asset through
the GitHub API with it. `gh auth token` prints one for the account `gh` is
signed in as. Without it, the download fails with a 404.

`brew upgrade byj byj-share` updates them. `byj update` refuses a Homebrew
install and says so.

## Where the formulae come from

`Formula/*.rb` are written by `dev/brew-formula.sh` in brainyard-jolt from a
published release — the release workflow pushes them here — and are not edited
by hand. See brainyard-jolt's RFC-029, "Homebrew".
