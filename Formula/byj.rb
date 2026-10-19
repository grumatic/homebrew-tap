# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.5 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.5"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.5/byj-0.3.5-macos-arm64"
      sha256 "16fe1d17c7df2119f09ea881eca45026d8f04218b3d00722d09e8daf29d7d901"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.5/byj-0.3.5-macos-amd64"
      sha256 "349ad00b654ca145539e5313b439a4b6f08a80301d9f8d857ae7caa6f9312686"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.5/byj-0.3.5-linux-amd64"
      sha256 "97191c93ec1fe9e04fd99f1ca12400d9f0b849c039e20d9b47e6298c51096c7e"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.5 ", shell_output("#{bin}/byj --version")
  end
end
