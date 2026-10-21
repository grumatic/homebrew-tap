# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.6 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.6"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.6/byj-0.3.6-macos-arm64"
      sha256 "8cc5cd1b990495fd389ddb9d6abd9c9c3ea505ee9f1153d057f2d92f23599413"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.6/byj-0.3.6-macos-amd64"
      sha256 "ecbc8febdf2bb685f0fd075c87bb9f19fb14a189674dd13f3ecffe890b9a3c84"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.6/byj-0.3.6-linux-amd64"
      sha256 "477b72ca4f71a8c0716595cd8568ea8862cc8dda611d9ab94a5b0bf83134974c"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.6 ", shell_output("#{bin}/byj --version")
  end
end
