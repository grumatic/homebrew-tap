# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.11 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.11"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.11/byj-0.3.11-macos-arm64"
      sha256 "ff5ea3f4bc3ad1df7bcfcb6d117fd41e0589e5f55e3a8786b9a274f6cda202a0"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.11/byj-0.3.11-macos-amd64"
      sha256 "0f3eece0d19eba24c4a1b7068c1a1bfeeec24b09021a8064ea230bcaaf4d9e9a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.11/byj-0.3.11-linux-amd64"
      sha256 "f3a8a62508f096582d94d14b039341e5228613b4cdd71e75985ed470e9b4b8f3"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.11 ", shell_output("#{bin}/byj --version")
  end
end
