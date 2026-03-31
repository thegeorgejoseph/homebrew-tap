class Mico < Formula
  desc "Mission control for local CLI AI agents"
  homepage "https://github.com/thegeorgejoseph/mico"
  url "https://github.com/thegeorgejoseph/mico/releases/download/v0.1.4/mico-0.1.4-aarch64-apple-darwin.tar.gz"
  sha256 "b018766d3ace056f72825ad19760377f5e209868d37170c15906405252c5d5ba"
  version "0.1.4"

  depends_on "tmux"

  def install
    bin.install "mico"
    doc.install "README.md"
  end

  test do
    system "#{bin}/mico", "paths"
  end
end
