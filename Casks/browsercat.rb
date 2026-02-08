cask "browsercat" do
  version "1.0.0"
  sha256 "12c745b21a6829d5040fb670f7231445714646c4c61b28fbb506dc92448754fb"

  url "https://github.com/rmarinsky/BrowserCat/releases/download/v#{version}/BrowserCat.dmg"
  name "BrowserCat"
  desc "macOS menu bar browser picker — choose which browser or app opens every link"
  homepage "https://github.com/rmarinsky/BrowserCat"

  depends_on macos: ">= :sonoma"

  app "BrowserCat.app"

  zap trash: [
    "~/Library/Application Support/BrowserCat",
  ]
end
