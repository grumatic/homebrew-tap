# Written by brainyard-apps' dev/workbench-release.sh from grumatic/homebrew-tap's workbench-v0.2.1 release — regenerate it, do not edit.
class BrainyardWorkbench < Formula
  desc "Web workbench for byj, the coding agent: sessions, terminals, files and changes"
  homepage "https://github.com/grumatic/homebrew-tap"
  url "https://github.com/grumatic/homebrew-tap/releases/download/workbench-v0.2.1/brainyard-workbench-0.2.1.tar.gz"
  sha256 "6177970a6e5158ae585793683b3c230c80cb10b40a957bf8050611aa6ace37af"
  version "0.2.1"

  depends_on :macos
  depends_on "node"
  depends_on "grumatic/tap/byj"

  def install
    # the menu bar item (--tray, decision 0019): AppKit only, built for this Mac
    system "swiftc", "-O", "-swift-version", "5", "-o", "bin/brainyard-workbench-tray", "tray/WorkbenchTray.swift"
    libexec.install Dir["*"]
    (bin/"brainyard-workbench").write_env_script libexec/"bin/brainyard-workbench", PATH: "#{Formula["node"].opt_bin}:$PATH"
  end

  def caveats
    <<~EOS
      Run it in a project directory, then open the address it prints:
        cd ~/your/project && brainyard-workbench
      It listens on 127.0.0.1:3000 (--port, --host to change).
      In the menu bar, with Start at Login there:
        cd ~/your/project && brainyard-workbench --tray
    EOS
  end

  test do
    assert_match "brainyard-workbench 0.2.1", shell_output("#{bin}/brainyard-workbench --version")
  end
end
