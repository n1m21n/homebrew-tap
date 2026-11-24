cask "infinite" do
  version "2.1.0"
  sha256 "e8a8fbae7f95fdfa03159e50f19af096369f48206100b74d1fb3848c13055941"

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
