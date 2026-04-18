cask "conduit" do
  version "0.9.0"
  sha256 "ec772f90e9590eafc3a2c75846324cbf6e88c4834aa283f838b215e3b6854602"

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
