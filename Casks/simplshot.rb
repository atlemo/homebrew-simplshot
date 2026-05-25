cask "simplshot" do
  version "1.5.4"
  sha256 "5bb39df791861b021557e86bcbe7439505ab082e10238f3541913e1962af7526"

  url "https://atle.co/simplshot/SimplShot-#{version}.zip",
      verified: "atle.co/simplshot/"
  name "SimplShot"
  desc "Screenshot app for fast captures, editing, and repeatable output sizes"
  homepage "https://www.simplshot.com/"

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "SimplShot.app"
end
