# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.16 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.16"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.16/byj-share-0.3.16-macos-arm64"
      sha256 "670178b4462e81491d327a3deba31e94b78a417b3faeacbf084701440513fc60"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.16/byj-share-0.3.16-macos-amd64"
      sha256 "08b980d556dc6e1e939e5ae30715c45686e1a71da3f8db451c36aa2578ec808b"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.16/byj-share-0.3.16-linux-amd64"
      sha256 "5c1e52bd5c836ba8b0c112b538243ff82ac1d10783798995d74fa180f38fd05e"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.16", shell_output("#{bin}/byj-share version")
  end
end
