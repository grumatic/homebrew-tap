# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.5 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.5"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.5/byj-a2a-0.3.5-macos-arm64"
      sha256 "5dafee85ef01978e977ab0cad60d231c77e3eec0ef1915778707cb106e6cd244"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.5/byj-a2a-0.3.5-macos-amd64"
      sha256 "d44426d1b9c67992d9df89b7f84bde2f32fe249d289524aa676ff6c81f77ac14"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.5/byj-a2a-0.3.5-linux-amd64"
      sha256 "56dd24dfed14d14fc2a92ae969eba224a76375dc5829c1f6d1415c4d05217243"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.5", shell_output("#{bin}/byj-a2a version")
  end
end
