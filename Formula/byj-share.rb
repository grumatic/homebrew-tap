# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.9 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.9"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.9/byj-share-0.3.9-macos-arm64"
      sha256 "9caa833e87c0bd287d9e134f68fcc2ff085678784103faede0c59468a02726b1"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.9/byj-share-0.3.9-macos-amd64"
      sha256 "e2d255345b9999927a7cc04599e09138fb097079e950c8206817d7d9498e323f"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.9/byj-share-0.3.9-linux-amd64"
      sha256 "ef261e7148a7a753dff67e81afa7723fc140136186aa4b6b5aa6682ecdcecddf"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.9", shell_output("#{bin}/byj-share version")
  end
end
