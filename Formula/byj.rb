# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.10 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.10"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.10/byj-0.3.10-macos-arm64"
      sha256 "147a1e3abd65ce28a3b1aea2e62e9f60994c2a2fb8b181bdbea128aee490f872"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.10/byj-0.3.10-macos-amd64"
      sha256 "8d74967279f080bc3f758524283df385562d5360f5ddcdb11d950afbc22b793b"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.10/byj-0.3.10-linux-amd64"
      sha256 "15cdd40367e7ef5d6abcc38122d069373a1ebf88e70e9a9371357d9125403752"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.10 ", shell_output("#{bin}/byj --version")
  end
end
