cask "simplshot" do
  version "1.8.2"
  sha256 "cd99152bd5365e700bb1d6f69c9a56a7aab3ac8d51a37f7a8d444e1e56b8b8dd"

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
