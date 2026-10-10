# Written by dev/brew-formula.sh in grumatic/brainyard-jolt from its v0.3.0 release — regenerate it, do not edit.
class Byj < Formula
  desc "brainyard's agent runtime on jolt"
  homepage "https://github.com/grumatic/brainyard-jolt"
  version "0.3.0"

  # grumatic/brainyard-jolt is private: each asset is fetched through the API with the token
  # Homebrew passes a formula, HOMEBREW_GITHUB_API_TOKEN (one that can read it).
  on_macos do
    depends_on "openssl@3"
    on_arm do
      url "https://api.github.com/repos/grumatic/brainyard-jolt/releases/assets/627963305",
          headers: ["Accept: application/octet-stream",
                    "Authorization: Bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}"]
      sha256 "69f8dca7b18119d1c4d6df93122a086e05a1386a5eb29134b87f1a923074bca8"
    end
    on_intel do
      url "https://api.github.com/repos/grumatic/brainyard-jolt/releases/assets/627963311",
          headers: ["Accept: application/octet-stream",
                    "Authorization: Bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}"]
      sha256 "4be0e625b029b9f0962563607561292f69bae72ac6ff53604e395d5ba2c4204c"
    end
  end
  on_linux do
    on_intel do
      url "https://api.github.com/repos/grumatic/brainyard-jolt/releases/assets/627963310",
          headers: ["Accept: application/octet-stream",
                    "Authorization: Bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}"]
      sha256 "8396bac930764adae533f18f1839d7fbdac47a660c3cbd610ee97c82bad5bbf7"
    end
  end

  def install
    bin.install Dir["*"].first => "byj"
  end

  test do
    assert_match "byj v0.3.0 ", shell_output("#{bin}/byj --version")
  end
end
