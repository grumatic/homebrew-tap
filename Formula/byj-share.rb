# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.4 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.4/byj-share-0.3.4-macos-arm64"
      sha256 "ec6bc872e59c6d7824f20a864169bf01b03986c30fe20d3e5f86255c3c1afc4d"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.4/byj-share-0.3.4-macos-amd64"
      sha256 "fe258ef546571dd33f392adde1d55efc54c960bcca2ecb3e3714604a5733c5f1"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.4/byj-share-0.3.4-linux-amd64"
      sha256 "a5df10e511db8d45317deedc957fe6ee1c2cc3738e933ac17cc1819adc305fdb"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.4", shell_output("#{bin}/byj-share version")
  end
end
