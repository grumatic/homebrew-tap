# Written by Share's dev/share-release.sh from grumatic/homebrew-tap's share-v0.4.0 release — regenerate it, do not edit.
class ByjA2a < Formula
  desc "byj's agents over the Agent2Agent protocol, and remote agents as byj's tools"
  homepage "https://github.com/grumatic/homebrew-tap"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/grumatic/homebrew-tap/releases/download/share-v0.4.0/byj-a2a-0.4.0-macos-arm64"
      sha256 "46dec5a69f1908c833133d1f5b9cade036b313301a10acb9c5031217b7fb040f"
    end
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/share-v0.4.0/byj-a2a-0.4.0-macos-amd64"
      sha256 "22f1a0aba904d2fbacab87c50d86fa803ce17c9da35079d5d1f7c0209df694b3"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/grumatic/homebrew-tap/releases/download/share-v0.4.0/byj-a2a-0.4.0-linux-amd64"
      sha256 "06717941dc37ee3559f57e9a56e7a0e64d35b29db48142581047236415b9aede"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-a2a"
  end

  test do
    assert_match "byj-a2a 0.4.0", shell_output("#{bin}/byj-a2a version")
  end
end
