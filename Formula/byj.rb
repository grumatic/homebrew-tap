# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.4 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.4"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.4/byj-0.3.4-macos-arm64"
      sha256 "d98d6cbfb7eb8d5d1a05dee4078c7165aac8cfe97e0a041a27a5ed26a0bfba98"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.4/byj-0.3.4-macos-amd64"
      sha256 "3147163f4574adc970ca74a6ad3fef3b084a72c64801eaf93267e8a8ec5dacba"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.4/byj-0.3.4-linux-amd64"
      sha256 "685094c9955308dafeeeeee296f599e49299e332d3f4862f53220ad05738ba4c"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.4 ", shell_output("#{bin}/byj --version")
  end
end
