# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.14 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.14"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.14/byj-0.3.14-macos-arm64"
      sha256 "185d6b7a2c8f672bad0946be74b13c0189e0988228407d2fb463fc6149592606"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.14/byj-0.3.14-macos-amd64"
      sha256 "9e5d12f75183698be127a427edc5f01cf98bad1c533c0e0085a2057bad4bf10b"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.14/byj-0.3.14-linux-amd64"
      sha256 "37ce6112475dd620d7fe42b500045631be146b91567050483637e0f03848127c"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.14 ", shell_output("#{bin}/byj --version")
  end
end
