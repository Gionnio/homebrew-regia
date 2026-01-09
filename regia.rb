cask "regia" do
  version "1.3.2"
  sha256 "9DDC8FFE495A39C9695D24126331EE125024709DA32CDF7F0A3CF4CF2C1C913D"

  url "https://github.com/gionnio/Regia.app/releases/download/v#{version}/Regia.app.zip"
  
  name "Regia"
  desc "Native macOS media organizer and renamer"
  homepage "https://github.com/gionnio/Regia.app"

  depends_on macos: ">= :sonoma"

  app "Regia.app"

  zap trash: [
    "~/Library/Preferences/com.gionnio.Regia.plist",
    "~/Library/Saved Application State/com.gionnio.Regia.savedState"
  ]
end
