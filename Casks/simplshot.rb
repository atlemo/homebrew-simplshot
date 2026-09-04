cask "simplshot" do
  version "1.7.6"
  sha256 "40ecc2a328984fabf95bddd36a169fb3ef29ae49c4a2a0cdb71439c0999e42ab"

  url "https://atle.co/simplshot/SimplShot-#{version}.zip"
  name "SimplShot"
  desc "Screenshot app for fast captures, editing, and repeatable output sizes"
  homepage "https://www.simplshot.com/"

  livecheck do
    url "https://atle.co/simplshot/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SimplShot.app"
end
