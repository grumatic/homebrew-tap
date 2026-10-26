# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.9 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.9"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.9/byj-a2a-0.3.9-macos-arm64"
      sha256 "ac44ef09916b36805103ed78179ce81edcf536af6714a95b916abfe57934aa78"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.9/byj-a2a-0.3.9-macos-amd64"
      sha256 "ebc6e9ecb071ed6ac972115d291ec092d54f866ad8a1506e21893fc394ef40e0"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.9/byj-a2a-0.3.9-linux-amd64"
      sha256 "166fe425bc8397d7e6c6e7952cfc7cf361a0a5dea2ed9834fba3ff59d152acd9"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.9", shell_output("#{bin}/byj-a2a version")
  end
end
