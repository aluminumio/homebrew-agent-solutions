cask "agent-solutions" do
  version "0.1.1"
  sha256 "9e06b73139a3d9340dc1c1f478fb7a6a756851cf5b3e1a89bd9468955709d6fc"

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
end
