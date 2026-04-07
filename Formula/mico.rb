class Mico < Formula
  desc "Mission control for local CLI AI agents"
  homepage "https://github.com/thegeorgejoseph/mico"
  url "https://github.com/thegeorgejoseph/mico/releases/download/v0.2.0/mico-0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "663ca2353f765f0c29e334fa35682beb0bdb87f0872ae98a5d279f26f9e1b158"
  version "0.2.0"

  depends_on "tmux"

  def install
    bin.install "mico"
    doc.install "README.md"
  end

  test do
    system "#{bin}/mico", "paths"
  end
end
