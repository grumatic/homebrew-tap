# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.7 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.7"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.7/byj-a2a-0.3.7-macos-arm64"
      sha256 "129bb7ce79613862a960e3f5d2c50e2ae375fb6f9891adb6223fd314c717dbcf"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.7/byj-a2a-0.3.7-macos-amd64"
      sha256 "6872f35a0832a60dd395c25246e6cc60628d2475fd955d75b0d867728f034080"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.7/byj-a2a-0.3.7-linux-amd64"
      sha256 "f341d09c325dabc9b37f0e87b76279cc126a87748db07fee831be5de26f2cdf1"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.7", shell_output("#{bin}/byj-a2a version")
  end
end
