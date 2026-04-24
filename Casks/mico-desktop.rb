cask "mico-desktop" do
  arch arm: "arm64"

  version :latest
  sha256 :no_check

  url "https://github.com/thegeorgejoseph/mico/releases/latest/download/mico-desktop-#{arch}.dmg",
      verified: "github.com/thegeorgejoseph/mico/"
  name "mico"
  desc "Desktop control plane for local AI coding work"
  homepage "https://github.com/thegeorgejoseph/mico"

  depends_on arch: :arm64
  depends_on formula: "tmux"

  app "mico.app"

  zap trash: "~/.mico-desktop"
end
