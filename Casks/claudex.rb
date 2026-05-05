cask "claudex" do
  version "2.0.0"
  sha256 "fe386206460484f13a0ea980f3c455133c4f79792430448faf0682b4b3e054f4"

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
