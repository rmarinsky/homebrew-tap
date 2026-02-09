cask "browsercat" do
  version "1.1.0"
  sha256 "e87d98629e27804506110793ee90c816d6f721564cba4cb217bc56c895763266"

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
