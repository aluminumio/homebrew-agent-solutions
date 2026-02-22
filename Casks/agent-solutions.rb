cask "agent-solutions" do
  arch arm: "arm64", intel: "x86_64"
  version "1.0.0"
  sha256 arm:   "PLACEHOLDER",
         intel: "PLACEHOLDER"

  url "https://github.com/aluminumio/homebrew-agent-solutions/releases/download/v#{version}/AgentSolutions-#{version}-#{arch}.dmg",
      verified: "github.com/aluminumio/homebrew-agent-solutions/"
  name "Agent Solutions"
  desc "Anthropic API proxy with pinnable menu bar panel"
  homepage "https://github.com/aluminumio/agent-solutions"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Agent Solutions.app"
end
