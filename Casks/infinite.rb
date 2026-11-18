cask "infinite" do
  version "2.0.0"
  sha256 "8c1dad034392a96adad9dc41535aa1eb0914f7765f7c601897597b7cc6cfc6a8"

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
