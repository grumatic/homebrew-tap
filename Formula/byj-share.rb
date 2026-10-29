# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.12 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.12"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.12/byj-share-0.3.12-macos-arm64"
      sha256 "6d1175a659fce6ab5445929c8f8148c87c45fb2398aba15f7788a16eb09af3dc"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.12/byj-share-0.3.12-macos-amd64"
      sha256 "f5e6a83538350b31b4392f8aa108f85a6dc342ea8eca3001a4c5fdf690ef449e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.12/byj-share-0.3.12-linux-amd64"
      sha256 "40dea6e85438330d6db4542787c7af41f345ac87b68d44b29d06fe180e6ba743"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.12", shell_output("#{bin}/byj-share version")
  end
end
