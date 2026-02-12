cask "papuga" do
  version "1.0"
  sha256 "621ac24135c1593bb0291ccfbe341a025c9779d889e689265d0e9f24a1f8e2e9"

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
