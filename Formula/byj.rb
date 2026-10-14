# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.2 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.2"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.2/byj-0.3.2-macos-arm64"
      sha256 "d55cdac5eff2276c9f4994ea833b50888707b440e3ae3d0ff4c40df2c6b81215"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.2/byj-0.3.2-macos-amd64"
      sha256 "3c57ed4d5e8cdd2d1e457363db53e136d804aa59fbc935901b4307ce6c81b82d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.2/byj-0.3.2-linux-amd64"
      sha256 "72108d86380efbf201b5631181e01260f45e92a6acf5eebedd237e374feee4a9"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.2 ", shell_output("#{bin}/byj --version")
  end
end
