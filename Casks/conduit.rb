cask "conduit" do
  version "0.9.0"
  sha256 "e8c0782258c672eb3c254469188c80724fc2ec7dec5775c5314614a12abc36eb"

  url "https://conduit.kopp-cloud.de/Conduit.#{version}.dmg"
  name "Conduit"
  desc "macOS backup utility powered by rsync with scheduling, snapshots, and bidirectional sync"
  homepage "https://conduit.kopp-cloud.de"

  depends_on macos: ">= :tahoe"

  app "Conduit.app"

  zap trash: [
    "~/Library/Application Support/Conduit",
    "~/Library/Preferences/com.conduit.app.plist",
    "~/Library/Caches/com.conduit.app",
  ]
end
