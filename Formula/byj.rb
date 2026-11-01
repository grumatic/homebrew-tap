# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.13 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.13"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.13/byj-0.3.13-macos-arm64"
      sha256 "08679593fffe09c4dd005ff7fea9377c6e43b85ae0cb8bf24cf4c80b086fb80a"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.13/byj-0.3.13-macos-amd64"
      sha256 "f355e2b0ea6d091ac1b77abd4ffaad378a2fb5214dedb842570129d490de4495"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.13/byj-0.3.13-linux-amd64"
      sha256 "9c693a778caa346321db62d5320186e465fa1c64d96a1bab7619312d1644fcc4"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.13 ", shell_output("#{bin}/byj --version")
  end
end
