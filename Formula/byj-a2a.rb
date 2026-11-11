# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.16 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.16"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.16/byj-a2a-0.3.16-macos-arm64"
      sha256 "a5ceec6f5f06c6fa3c9833552492ca82dd2a5e4bd0e389774a59d47b2d07ecf2"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.16/byj-a2a-0.3.16-macos-amd64"
      sha256 "65efa4d2573fa33e9348e39508f14c670f65188bc6a2eebb142bb5c1bc6ab779"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.16/byj-a2a-0.3.16-linux-amd64"
      sha256 "0a5134b9b1e6c7ff4568a9b526aaf59bc1a15277ad2808613ffd08f0c0924b62"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.16", shell_output("#{bin}/byj-a2a version")
  end
end
