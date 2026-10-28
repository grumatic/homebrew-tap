# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.10 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.10"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.10/byj-share-0.3.10-macos-arm64"
      sha256 "0c974a6fff8be8ae5c959ad048f922c6a779a9b6b7a870f42e25bbea33b7230a"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.10/byj-share-0.3.10-macos-amd64"
      sha256 "fafe3d0af2b81eeac54bb7e58bd0cec9a53eb0499ba70c7e179c18932b0605fd"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.10/byj-share-0.3.10-linux-amd64"
      sha256 "ddaa5afd0fd2a0c22a79e29425996306855cf730b886641b201b7bb4c9b5993b"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.10", shell_output("#{bin}/byj-share version")
  end
end
