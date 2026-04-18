cask "conduit" do
  version "0.9.0"
  sha256 "0601457c2f6761b102723eb976f4f1a3ab2daa02cef0c7c198a9284b1c58bdf4"

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
