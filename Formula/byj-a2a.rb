# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.8 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.8"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.8/byj-a2a-0.3.8-macos-arm64"
      sha256 "071479d17319d8658584f2270f1b714ad777d41921e96e4f0c6882fa2007aee4"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.8/byj-a2a-0.3.8-macos-amd64"
      sha256 "5140f535fd14d85661fd4333c735d3befe5c8ffb6258eb7f130e387b5999bc31"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.8/byj-a2a-0.3.8-linux-amd64"
      sha256 "cca0f19a596b1ef93c8495f95e687e700360351caa9d4d7449140fb4455124e4"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.8", shell_output("#{bin}/byj-a2a version")
  end
end
