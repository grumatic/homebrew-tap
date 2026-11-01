# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.13 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.13"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.13/byj-a2a-0.3.13-macos-arm64"
      sha256 "bbbabbb497f4dd80cf66071d17051cf73233807d5fb1db1a8f3fb99def77fa43"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.13/byj-a2a-0.3.13-macos-amd64"
      sha256 "2ffc6963c86cd186373767db59074fe5c54d7e425d6dffdc18c2675720b753db"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.13/byj-a2a-0.3.13-linux-amd64"
      sha256 "15458e28707ddf446c1d39c9968681ce7c843734310513282d026c6e16af07bd"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.13", shell_output("#{bin}/byj-a2a version")
  end
end
