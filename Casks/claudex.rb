cask "claudex" do
  version "0.1.0"
  sha256 "5599f613f5b364b750620af22ab0b48e077e0810c6bb4ae6a6a4a8820e4ee356"

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
