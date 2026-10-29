# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.12 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.12"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.12/byj-a2a-0.3.12-macos-arm64"
      sha256 "064d59a2038935b343e47ae8fcb30f3f670aad43500ab11e3615520d04c90ec4"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.12/byj-a2a-0.3.12-macos-amd64"
      sha256 "87d437ccb30a9144b6158fe3a8d1fe6153206919f408bc6ce93e3078404628fc"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.12/byj-a2a-0.3.12-linux-amd64"
      sha256 "8c706c27c9cae8295072d7514c0161dd2909afabe465a299a2e68aaab8f5fa63"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.12", shell_output("#{bin}/byj-a2a version")
  end
end
