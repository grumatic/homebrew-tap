# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.4 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.4/byj-a2a-0.3.4-macos-arm64"
      sha256 "9d7d390c660c815f6eb4e25bef5ea4adab93729681b864a40c45c9bca6040abd"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.4/byj-a2a-0.3.4-macos-amd64"
      sha256 "d8c9a8441451665971bf64383ff2bbaafacca80c6aa53a5fc4195a9b06f9a4f7"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.4/byj-a2a-0.3.4-linux-amd64"
      sha256 "7f239b0439b1a356f4c96f52e774839b6b6c036798faac753b22929f698eb3f9"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.4", shell_output("#{bin}/byj-a2a version")
  end
end
