# Written by brainyard-apps' dev/workbench-release.sh from grumatic/homebrew-tap's workbench-v0.1.0 release — regenerate it, do not edit.
class BrainyardWorkbench < Formula
  desc "Web workbench for byj, the coding agent: sessions, terminals, files and changes"
  homepage "https://github.com/grumatic/homebrew-tap"
  url "https://github.com/grumatic/homebrew-tap/releases/download/workbench-v0.1.0/brainyard-workbench-0.1.0.tar.gz"
  sha256 "13f39f898287a6f01baff7ab71f389e701468ad58860b36bc425f67a696f1442"
  version "0.1.0"

  depends_on :macos
  depends_on "node"
  depends_on "grumatic/tap/byj"

  def install
    libexec.install Dir["*"]
    (bin/"brainyard-workbench").write_env_script libexec/"bin/brainyard-workbench", PATH: "#{Formula["node"].opt_bin}:$PATH"
  end

  def caveats
    <<~EOS
      Run it in a project directory, then open the address it prints:
        cd ~/your/project && brainyard-workbench
      It listens on 127.0.0.1:3000 (--port, --host to change).
    EOS
  end

  test do
    assert_match "brainyard-workbench 0.1.0", shell_output("#{bin}/brainyard-workbench --version")
  end
end
