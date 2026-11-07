# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.15 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.15"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.15/byj-a2a-0.3.15-macos-arm64"
      sha256 "674416a6db8c3c681ba604a44ef2d986ef1e84799e680dec2daa8f32ebe56d45"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.15/byj-a2a-0.3.15-macos-amd64"
      sha256 "00c7fa216054bd220102b255c5610a21bb624670af0c84e531c45f62a4b158cf"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.15/byj-a2a-0.3.15-linux-amd64"
      sha256 "772103e141d62b9bba40e37c652b7b1c79f8d6a2230817883d2bfa812934ab2e"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.15", shell_output("#{bin}/byj-a2a version")
  end
end
