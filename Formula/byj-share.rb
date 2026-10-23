# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.7 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.7"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.7/byj-share-0.3.7-macos-arm64"
      sha256 "869483a4ac8c0f0d79f6016415876b0092c0450e6979bc3d0b87dcc5a837f56d"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.7/byj-share-0.3.7-macos-amd64"
      sha256 "b45b2bf1061145ba6c3f0d69f7c1e83dd6694d640ad011cd3fb8b39d55c0ca61"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.7/byj-share-0.3.7-linux-amd64"
      sha256 "bdf9a9a88bd10b1787ca9240b5ea1c08843c3d6943775e95213892f48b48813b"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.7", shell_output("#{bin}/byj-share version")
  end
end
