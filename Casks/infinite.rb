cask "infinite" do
  version "1.0.0"
  sha256 "847979ec524d2427edee2424e34ef4bdfd7b99142b4002f89ea27e49b1c037d7"

  url "https://github.com/n1m21n/Infinite/releases/download/v#{version}/Infinite.dmg",
      verified: "github.com/n1m21n/Infinite/"
  name "Infinite"
  desc "Real-time modular audiovisual workstation for visuals, music and code"
  homepage "https://infinitedevices.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Infinite.app"
  binary "#{appdir}/Infinite.app/Contents/MacOS/Infinite", target: "infinite"

  zap trash: [
    "~/Library/Application Support/Infinite",
    "~/Library/Preferences/org.infinitedevices.Infinite.plist",
    "~/Library/Saved Application State/org.infinitedevices.Infinite.savedState",
  ]
end
