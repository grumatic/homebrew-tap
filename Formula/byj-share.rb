# Written by Share's dev/share-release.sh from grumatic/homebrew-tap's share-v0.4.0 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/share-v0.4.0/byj-share-0.4.0-macos-arm64"
      sha256 "49ee7d87f6d3bdd1beb382dc955dfa58aa9b3d426b386e5e31d424bf2d0fb99e"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/share-v0.4.0/byj-share-0.4.0-macos-amd64"
      sha256 "8bab082b11c6eb49fa0d3066afe7f8056d0efaac98e52a65c855cc971f1075a3"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/share-v0.4.0/byj-share-0.4.0-linux-amd64"
      sha256 "589a4dc5ae24503d21540be273cecba3ac1db1fcd5374bf65a15b075187699cd"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.4.0", shell_output("#{bin}/byj-share version")
  end
end
