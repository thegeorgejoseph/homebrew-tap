class Mico < Formula
  desc "Mission control for local CLI AI agents"
  homepage "https://github.com/thegeorgejoseph/mico"
  url "https://github.com/thegeorgejoseph/mico/releases/download/v0.1.2/mico-0.1.2-aarch64-apple-darwin.tar.gz"
  sha256 "812faaae312a170e7c22434a9224f87cdd0c7d242eeb1e9eeba03ff15db06bc8"
  version "0.1.2"

  depends_on "tmux"

  def install
    bin.install "mico"
    doc.install "README.md"
  end

  test do
    system "#{bin}/mico", "paths"
  end
end
