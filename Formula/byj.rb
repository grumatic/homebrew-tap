# Written by byj's dev/brew-formula.sh from grumatic/homebrew-tap's v0.3.22 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.22"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.22/byj-0.3.22-macos-arm64"
      sha256 "9078180b8927f1083b91e1b1fe9f5339cecbf12e769955a3be18a43727e9ca4f"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.22/byj-0.3.22-macos-amd64"
      sha256 "cb1066d817067a489811be02f7b5e620888de6d01fcc9042e6126c3b2964ba97"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.22/byj-0.3.22-linux-arm64"
      sha256 "ef3a35567f22851477f9baad208681a4622fa6210128c4401cbb2e0fb30d8fa3"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.22/byj-0.3.22-linux-amd64"
      sha256 "36486ae5761d95791e2416293c3f880691d7c71fefcaa848d4b273796aafdd33"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.22 ", shell_output("#{bin}/byj --version")
  end
end
