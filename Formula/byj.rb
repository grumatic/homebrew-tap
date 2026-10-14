# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.3 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.3"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.3/byj-0.3.3-macos-arm64"
      sha256 "226d47a87aba6e4ac1e565eb395fc1c3aa31fa31fc2a34713846afc633324d44"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.3/byj-0.3.3-macos-amd64"
      sha256 "61086f7837712c687f703f08056487c8af813dd583abd7d47a85075ebf740b79"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.3/byj-0.3.3-linux-amd64"
      sha256 "f27c604920d868a66a716ef0d3919c14e882db35a478fdebc1e74df39a4c0373"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.3 ", shell_output("#{bin}/byj --version")
  end
end
