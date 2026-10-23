# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.7 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.7"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.7/byj-0.3.7-macos-arm64"
      sha256 "e12bb8d135bbfdecf3f7dfdce978a1872352d5a47ca8968bb2dd431970236edd"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.7/byj-0.3.7-macos-amd64"
      sha256 "61542f3587d6a1dcc46a34db8bf9e273b48686224fc18c08abf7c9abf8f9a028"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.7/byj-0.3.7-linux-amd64"
      sha256 "e168b6162c132bbe6768ad75dcf2e9c44b87a785f4e92200723edbf5d615a29e"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.7 ", shell_output("#{bin}/byj --version")
  end
end
