# Written by byj's dev/brew-formula.sh from grumatic/homebrew-tap's v0.3.20 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.20"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.20/byj-0.3.20-macos-arm64"
      sha256 "4de3a3b83102ee27580f9b8701f09cebdafe1e9d5ae6dd678d6652d23a9d8845"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.20/byj-0.3.20-macos-amd64"
      sha256 "bb9cbcf26c54a073447093445ff12133c44666b86537ea7b00227d6e03688b89"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.20/byj-0.3.20-linux-arm64"
      sha256 "5b637ad4b4c181486235ecf901934d63cf7ff9073a1c85e0f58bdb3dfc714683"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.20/byj-0.3.20-linux-amd64"
      sha256 "8817a743a02d8140fc3e6e4d53470c96e60619b1e80fb0e5fb8546dc974a355b"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.20 ", shell_output("#{bin}/byj --version")
  end
end
