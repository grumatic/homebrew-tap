# Written by byj's dev/brew-formula.sh from grumatic/homebrew-tap's v0.3.17 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.17"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.17/byj-0.3.17-macos-arm64"
      sha256 "34f14cc82693720956801e91eaa86f2b0eb4464b95a295774279724b7b74aafc"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.17/byj-0.3.17-macos-amd64"
      sha256 "00992131df0dc223e1f4351227dd861dcace78257da92780c1129f4144070ef5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.17/byj-0.3.17-linux-amd64"
      sha256 "e83eb9ae63840a20cbd6ec749a5031d287fb111edcfefacac2a307565c5fb894"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.17 ", shell_output("#{bin}/byj --version")
  end
end
