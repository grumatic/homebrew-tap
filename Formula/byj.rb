# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.1 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.1"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.1/byj-0.3.1-macos-arm64"
      sha256 "5e1cf9654d62df36a1656074700a3b3dc1009d10722a581ef12c1bb139531b30"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.1/byj-0.3.1-macos-amd64"
      sha256 "6c424293efc4443139f3eceb20627bf26047588fa2587bd85f762b93cce39648"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.1/byj-0.3.1-linux-amd64"
      sha256 "0130d8c4da8c74680cf151cc5c7a4225d15db12b680243bebc73a4bcc2bdf861"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.1 ", shell_output("#{bin}/byj --version")
  end
end
