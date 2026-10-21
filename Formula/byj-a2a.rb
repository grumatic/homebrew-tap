# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.6 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.6"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.6/byj-a2a-0.3.6-macos-arm64"
      sha256 "25f1aa0a53f9eb18fc5ac4183f7994fa323015d17413d3f998a3e71c296b61f6"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.6/byj-a2a-0.3.6-macos-amd64"
      sha256 "de934afb396e84aab071310a49e9c8a9d7df75ecda63f612c0f75bcf09c9e09e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.6/byj-a2a-0.3.6-linux-amd64"
      sha256 "e22b1104771db777df4ddbb36d311eb253f2404e68cd40272c262992695de735"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.6", shell_output("#{bin}/byj-a2a version")
  end
end
