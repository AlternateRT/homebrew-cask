cask "flutterflow" do
  version "4.1.86"
  sha256 "3fefe3a95614bbd16f6291cf41be893f59dbf33bd17ecf848a7fc4b6b7442515"

  url "https://storage.googleapis.com/flutterflow-downloads/macos/flutterflow-#{version}-macos.zip",
      verified: "storage.googleapis.com/flutterflow-downloads/"
  name "FlutterFlow"
  desc "Visual development platform"
  homepage "https://flutterflow.io/"

  livecheck do
    url "https://storage.googleapis.com/flutterflow-downloads/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "FlutterFlow.app"

  zap trash: [
    "~/Library/Application Support/io.flutterflow.prod.mac",
    "~/Library/Caches/io.flutterflow.prod.mac",
    "~/Library/HTTPStorages/io.flutterflow.prod.mac",
    "~/Library/Preferences/io.flutterflow.prod.mac.plist",
    "~/Library/Saved Application State/io.flutterflow.prod.mac.savedState",
  ]
end