# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.12 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.12"

  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.12/byj-0.3.12-macos-arm64"
      sha256 "1e5500d1229635db14741b6a7e0e3aaa0ab77f9b888dc0c5584a1f5d49f3deec"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.12/byj-0.3.12-macos-amd64"
      sha256 "748bca74acd2f28994cd04f5acc4bfbe339d47d6d225b186635013d9eefcaec5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.12/byj-0.3.12-linux-amd64"
      sha256 "2cab93cb97583ffc61da494dc71110564714eb0ca5c977fd86b02319ddd784ed"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.12 ", shell_output("#{bin}/byj --version")
  end
end
