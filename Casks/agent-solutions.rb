cask "agent-solutions" do
  version "0.1.23"
  sha256 "a46811d082d263c810093d4b205b6d8445f1632cd846b011c10f6ac29445bea6"

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
