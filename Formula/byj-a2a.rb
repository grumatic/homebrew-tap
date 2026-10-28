# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.10 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.10"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.10/byj-a2a-0.3.10-macos-arm64"
      sha256 "4c07f2a10699710b95452c884c98619e2b1b78ee324b88dc47922c647a026312"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.10/byj-a2a-0.3.10-macos-amd64"
      sha256 "eef32d95cce211af6f450a1aece69dce241500d6d234127aa63fe5a9260f7e50"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.10/byj-a2a-0.3.10-linux-amd64"
      sha256 "ccc80e9e59108d8d048687b0c4487f1ab0d820c6bb1959d88a71e2a09dd3f1da"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.10", shell_output("#{bin}/byj-a2a version")
  end
end
