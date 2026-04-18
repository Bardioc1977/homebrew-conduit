cask "conduit" do
  version "0.1.0"
  sha256 "16f3804e5703ccfbf2b2ddbd0fad28b2a24863902bf64838bee1419f078385d6"

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
