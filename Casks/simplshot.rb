cask "simplshot" do
  version "1.7.1"
  sha256 "7d39de082f90afac7fa63c5cd71aecabfbe9783efc9cd89adf40b90c199c4b46"

  url "https://atle.co/simplshot/SimplShot-#{version}.zip",
      verified: "atle.co/simplshot/"
  name "SimplShot"
  desc "Screenshot app for fast captures, editing, and repeatable output sizes"
  homepage "https://www.simplshot.com/"

  auto_updates true
  depends_on macos: :tahoe

  app "SimplShot.app"
end
