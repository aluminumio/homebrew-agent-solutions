cask "agent-solutions" do
  version "0.1.7"
  sha256 "c06848ffc71d66defcd1e0d465e3455452343aff6140b5606998b00fe4b4c135"

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
