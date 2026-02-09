cask "diduny" do
  version "1.6.1"
  sha256 "28db0bd221558727558c27e9edf4b2cd223f192e540bc0d4bd8826cf42ac869c"

  url "https://github.com/rmarinsky/Diduny/releases/download/v#{version}/Diduny.dmg"
  name "Diduny"
  desc "macOS menu bar voice dictation app — record, transcribe via Soniox, and paste"
  homepage "https://github.com/rmarinsky/Diduny"

  depends_on macos: ">= :sonoma"

  app "Diduny.app"

  zap trash: [
    "~/Library/Application Support/Diduny",
  ]
end
