# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.3 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.3/byj-a2a-0.3.3-macos-arm64"
      sha256 "5fe92cb29473caeee1a25826692e20202577f4af97841aedec2a8f28d1e1a01f"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.3/byj-a2a-0.3.3-macos-amd64"
      sha256 "26f9983959cc656922340eca6752437fb897cf17390203f714cbcddeff4e399a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.3/byj-a2a-0.3.3-linux-amd64"
      sha256 "6fccb03b117b9b1b88519587d0b3b0f56a2becfd03e1696a843047e358a721af"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.3", shell_output("#{bin}/byj-a2a version")
  end
end
