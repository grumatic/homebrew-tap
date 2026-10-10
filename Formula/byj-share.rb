# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from its v0.3.0 release — regenerate it, do not edit.
class ByjShare < Formula
  desc "Shares a byj or Claude Code session through the Brainyard Share relay"
  homepage "https://github.com/grumatic/brainyard-jolt"
  version "0.3.0"

  # grumatic/brainyard-jolt is private: each asset is fetched through the API with the token
  # Homebrew passes a formula, HOMEBREW_GITHUB_API_TOKEN (one that can read it).
  on_macos do
    on_arm do
      url "https://api.github.com/repos/grumatic/brainyard-jolt/releases/assets/627963394",
          headers: ["Accept: application/octet-stream",
                    "Authorization: Bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}"]
      sha256 "9f04849da7f4fc7834a6781c17c685000ff1c11b2b2ac6e8cc2deb54ce40b78a"
    end
    on_intel do
      url "https://api.github.com/repos/grumatic/brainyard-jolt/releases/assets/627963336",
          headers: ["Accept: application/octet-stream",
                    "Authorization: Bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}"]
      sha256 "b927a2924ec9228e187969948f244ceca80f3ccca3910f7c985242315b306ce2"
    end
  end
  on_linux do
    on_intel do
      url "https://api.github.com/repos/grumatic/brainyard-jolt/releases/assets/627963337",
          headers: ["Accept: application/octet-stream",
                    "Authorization: Bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}"]
      sha256 "c958ac3370ba36b67c95ec0f67e2109e490220c2691dbbc04c197d59685268b4"
    end
  end

  def install
    bin.install Dir["*"].first => "byj-share"
  end

  test do
    assert_match "byj-share 0.3.0", shell_output("#{bin}/byj-share version")
  end
end
