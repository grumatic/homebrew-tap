# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.6 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.6"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.6/byj-share-0.3.6-macos-arm64"
      sha256 "766aea3b759e28d3d9001ee894d786d2ea2b83963c46000cb592da026690e78a"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.6/byj-share-0.3.6-macos-amd64"
      sha256 "1e9c7543c9579a3a0aad27b7484bf6a017432aea55cdbd939e91b9c649bc6133"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.6/byj-share-0.3.6-linux-amd64"
      sha256 "200181113bc08e780d53c2596d00c8c27be6cd135598c4dc81e1bfc053fe717c"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.6", shell_output("#{bin}/byj-share version")
  end
end
