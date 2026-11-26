# Written by byj's dev/brew-formula.sh from grumatic/homebrew-tap's v0.3.21 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.21"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.21/byj-0.3.21-macos-arm64"
      sha256 "7e2e4583551cd1421ce4a68014cdcff5757a1a91e3daa474b8eea242ba3efe03"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.21/byj-0.3.21-macos-amd64"
      sha256 "909127dabfb3928bf7e60d54455eb820dfb85df73d770f4c85c9e46c221d7c8d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.21/byj-0.3.21-linux-arm64"
      sha256 "38b8ddd02d6deb5e7eaad6857c66579561ab13e28451288746f5383fa39f5a62"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.21/byj-0.3.21-linux-amd64"
      sha256 "4c539fcd1486f16f819753565980759c9cb31adbd9f8469698bf1ab5973c2152"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.21 ", shell_output("#{bin}/byj --version")
  end
end
