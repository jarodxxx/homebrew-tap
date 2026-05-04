cask "claudex" do
  version "1.0.1"
  sha256 "9a63bfc9d1a0dc951afd0a90d056862cff283546ac4332b81f7979f7d2e8dd21"

  url "https://github.com/jarodxxx/Claudex/releases/download/v#{version}/Claudex-#{version}.dmg"
  name "Claudex"
  desc "macOS menu bar app aggregating Claude.ai, RTK and MemPalace usage"
  homepage "https://github.com/jarodxxx/Claudex"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Claudex.app"

  zap trash: [
    "~/.claudex",
    "~/Library/Preferences/com.claudex.app.plist",
    "~/Library/Caches/com.claudex.app",
  ]
end
