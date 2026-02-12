cask "papuga" do
  version "1.0.1"
  sha256 "546df65a9e370621d9922a4b62ace97f5ddbce07ed916cc3dd3d0c0f9741364d"

  url "https://github.com/rmarinsky/papuga/releases/download/v#{version}/Papuga-#{version}.dmg"
  name "Papuga"
  desc "macOS menu bar keyboard layout switcher — fix text typed in wrong layout"
  homepage "https://github.com/rmarinsky/papuga"

  depends_on macos: ">= :sonoma"

  app "papuga.app"

  zap trash: [
    "~/Library/Preferences/ua.com.rmarinsky.papuga.plist",
  ]
end
