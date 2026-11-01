# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.13 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.13"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.13/byj-share-0.3.13-macos-arm64"
      sha256 "7ae5e81b698c36525ea90606b8b2e32f3e874c5715dfc0d4c8a11ba66bd77519"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.13/byj-share-0.3.13-macos-amd64"
      sha256 "bfa02af942fd843af14889605ae5a66897c9596f6581a22e83943246cf57059f"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.13/byj-share-0.3.13-linux-amd64"
      sha256 "a8534788c99f08ff710f36a3df783d7109ebd855524d277c901dcb202f644b00"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.13", shell_output("#{bin}/byj-share version")
  end
end
