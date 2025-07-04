cask "air-video-server-hd" do
  version "2.3.0-beta1u1"
  sha256 "1e45abf868349f1ad43b6f3a1234a254d31e943ef5c7d72b84eff9f955a15a33"

  url "https://s3.amazonaws.com/AirVideoHD/Download/Air+Video+Server+HD+#{version}.dmg",
      verified: "s3.amazonaws.com/AirVideoHD/"
  name "Air Video Server HD"
  desc "Tool to stream videos to Apple devices"
  homepage "https://airvideo.app/"

  livecheck do
    url "https://s3.amazonaws.com/AirVideoHD/Download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  no_autobump! because: :requires_manual_review

  auto_updates true

  app "Air Video Server HD.app"

  zap trash: [
    "~/Library/Caches/com.inmethod.AirVideoServerHD",
    "~/Library/Logs/AirVideoServerHD",
    "~/Library/Preferences/com.inmethod.AirVideoServerHD.plist",
  ]

  caveats do
    requires_rosetta
  end
end
