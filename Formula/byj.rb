# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.9 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.9"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.9/byj-0.3.9-macos-arm64"
      sha256 "2fd9ee24a5f3e2b80badcd7e625d2637b0daa8823943d8fa359de8842c8235c0"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.9/byj-0.3.9-macos-amd64"
      sha256 "2ae6e209379076f89921faddaddac4eee1233c411acca6b05c90f66725677069"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.9/byj-0.3.9-linux-amd64"
      sha256 "185d2008c51620d90d601ceee6cd58834b8c6d887cbff28c3048f83ab67ab394"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.9 ", shell_output("#{bin}/byj --version")
  end
end
