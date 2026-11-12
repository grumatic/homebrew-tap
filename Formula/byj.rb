# Written by byj's dev/brew-formula.sh from grumatic/homebrew-tap's v0.3.18 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.18"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.18/byj-0.3.18-macos-arm64"
      sha256 "1c1ab151b6f62dfab407bf483ad522338bebfa213905a222e4cfdef6b51b8fba"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.18/byj-0.3.18-macos-amd64"
      sha256 "6921b005ee8762fa183fa4a8da10b60d47b70400be3e374cd22ad47aed029bc4"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.18/byj-0.3.18-linux-amd64"
      sha256 "150832761a9ea7c7cf88b22fd1b2a267cf96e882c0e20514f973f68c6fa3a047"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.18 ", shell_output("#{bin}/byj --version")
  end
end
