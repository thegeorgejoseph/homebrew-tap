class Mico < Formula
  desc "Mission control for local CLI AI agents"
  homepage "https://github.com/thegeorgejoseph/mico"
  url "https://github.com/thegeorgejoseph/mico/releases/download/v0.1.3/mico-0.1.3-aarch64-apple-darwin.tar.gz"
  sha256 "49fd0db4897458d2e7c1ae0ae4727287bee29489c25337fe62aa5299739f5dc0"
  version "0.1.3"

  depends_on "tmux"

  def install
    bin.install "mico"
    doc.install "README.md"
  end

  test do
    system "#{bin}/mico", "paths"
  end
end
