# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.15 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.15"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.15/byj-0.3.15-macos-arm64"
      sha256 "f539f578fff7ce43f1d14a06dfbd81be751efdf8cd3b41b9b85c1e9edf31226b"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.15/byj-0.3.15-macos-amd64"
      sha256 "75881b160149038299efe1429579b930f432d6db4f0c102d75e3289c2a74c48a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.15/byj-0.3.15-linux-amd64"
      sha256 "0189516b52491baf79984a712700350c39242cb7fc19a8a67cf4eb157e6af733"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.15 ", shell_output("#{bin}/byj --version")
  end
end
