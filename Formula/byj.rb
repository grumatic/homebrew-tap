# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.8 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.8"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.8/byj-0.3.8-macos-arm64"
      sha256 "7cc92b15cdc4ffb92bdf5e846de10f24383a4b585c2772014c25894dd782815b"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.8/byj-0.3.8-macos-amd64"
      sha256 "c14efdb98ff4efe8d8ab069b999b009d779d9b41d9884164702a39787e933cdd"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.8/byj-0.3.8-linux-amd64"
      sha256 "4d485073dc9fb18a2fe3aee571e451574c1b5fe3dfeef7e4140d46f23fe0b0e6"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.8 ", shell_output("#{bin}/byj --version")
  end
end
