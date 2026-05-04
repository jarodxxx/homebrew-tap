cask "claudex" do
  version "1.0.0"
  sha256 "609fb8cf3a9dc56e8837ad387ad3ec7d3685b34454fa90d6003b520b80caa0aa"

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
