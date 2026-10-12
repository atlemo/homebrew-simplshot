cask "simplshot" do
  version "1.7.7"
  sha256 "16020e6df7a8923f5195da19835c87452817f8f2db937fda5645fca3f8ee102a"

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
