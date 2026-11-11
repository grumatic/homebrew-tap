# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.16 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.16"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.16/byj-0.3.16-macos-arm64"
      sha256 "953eb80f0b04433bb3fc610c077223f63c91bfa9922dc529042f782920b6c56f"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.16/byj-0.3.16-macos-amd64"
      sha256 "b402e80b359e9c575e49cb0eb3c05ba96d1080ef9f72196860bbd9283f5be44b"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.16/byj-0.3.16-linux-amd64"
      sha256 "4c608267561b1b5c87dbbfd0b60b8bfd67939adedf07c345f798efee02e28153"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.16 ", shell_output("#{bin}/byj --version")
  end
end
