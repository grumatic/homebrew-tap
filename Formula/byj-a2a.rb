# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.11 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.11"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.11/byj-a2a-0.3.11-macos-arm64"
      sha256 "bd07e3dc13b0c8aa92d44f4df47ad0276cd4989a8777b2e8367fec86ea2c7d4c"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.11/byj-a2a-0.3.11-macos-amd64"
      sha256 "459b78cc3c96bce88ee5372f8595ebbb3f7e4f38ad2384ffd4fcd18edfbb3aea"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.11/byj-a2a-0.3.11-linux-amd64"
      sha256 "ba3282e9c11e5a6e4e06c95bef5a1bb5132f8fb56dd3d2824f4340d74fb57629"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.11", shell_output("#{bin}/byj-a2a version")
  end
end
