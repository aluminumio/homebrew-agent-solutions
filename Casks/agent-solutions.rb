cask "agent-solutions" do
  version "0.1.28"
  sha256 "3c7d4f7f1486efd2b1a52df1bd4a29455300c7babd2d99ed2182ccd812cefbb5"

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
