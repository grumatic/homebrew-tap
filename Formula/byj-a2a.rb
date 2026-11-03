# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from grumatic/homebrew-tap's v0.3.14 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.3.14"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.14/byj-a2a-0.3.14-macos-arm64"
      sha256 "989cedecc02bd324e3b6856062b8481ee86a141050c73e08be68379092a020a7"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.14/byj-a2a-0.3.14-macos-amd64"
      sha256 "8706a84c6baa2d5f3bcc19c8952a5711fcdeb64d06ab6af2230c86cce03c2d88"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/v0.3.14/byj-a2a-0.3.14-linux-amd64"
      sha256 "40b49cc34957ed42c52359ac28c29d96d73c38363e28628888cfa3ba991e2e4e"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.3.14", shell_output("#{bin}/byj-a2a version")
  end
end
