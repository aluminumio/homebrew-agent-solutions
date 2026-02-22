cask "agent-solutions" do
  version "0.1.11"
  sha256 "132dcb5e19dbad45fed67e72eb1be8095ecd830d2018ac3fbc53164d2b263073"

  url "https://github.com/aluminumio/homebrew-agent-solutions/releases/download/v#{version}/AgentSolutions-#{version}-arm64.dmg",
      verified: "github.com/aluminumio/homebrew-agent-solutions/"
  name "Agent Solutions"
  desc "Anthropic API proxy with pinnable menu bar panel"
  homepage "https://github.com/aluminumio/homebrew-agent-solutions"

  depends_on arch: :arm64

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Agent Solutions.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/Agent Solutions.app"],
                   sudo: false
  end
end
