cask "claudex" do
  version "2.1.0"
  sha256 "a59de1dad396d944f5f23259cdc23b1525fcefa0a14001b33535b44d9c0b3d4e"

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
