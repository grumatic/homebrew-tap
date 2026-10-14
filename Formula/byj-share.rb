# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.3 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.3/byj-share-0.3.3-macos-arm64"
      sha256 "feaa8b11abd224fdd32118d59e4edf040ce76e9e0c5954193712f1eff48d0637"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.3/byj-share-0.3.3-macos-amd64"
      sha256 "efa77c7d8f7266837f227300e8b72865b4b8cc368eda566c684a5a559a6338b7"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.3/byj-share-0.3.3-linux-amd64"
      sha256 "a4c84a78f704201c39e11ce1d531d60f5396e8ee34efe8e962006ba67aa04811"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.3", shell_output("#{bin}/byj-share version")
  end
end
