class Mico < Formula
  desc "Mission control for local CLI AI agents"
  homepage "https://github.com/thegeorgejoseph/mico"
  url "https://github.com/thegeorgejoseph/mico/releases/download/v0.1.5/mico-0.1.5-aarch64-apple-darwin.tar.gz"
  sha256 "d678091a7f4cb36930b56a390f4d595e5a5b2610e4e443152f7de0b90f9a70ba"
  version "0.1.5"

  depends_on "tmux"

  def install
    bin.install "mico"
    doc.install "README.md"
  end

  test do
    system "#{bin}/mico", "paths"
  end
end
