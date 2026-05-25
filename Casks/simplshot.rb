cask "simplshot" do
  version "1.6.3"
  sha256 "c19d76324edde5749f0d9b6f5cbabe6d813db59de3ead70b253813b2b4e2c651"

  url "https://atle.co/simplshot/SimplShot-#{version}.zip",
      verified: "atle.co/simplshot/"
  name "SimplShot"
  desc "Screenshot app for fast captures, editing, and repeatable output sizes"
  homepage "https://www.simplshot.com/"

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "SimplShot.app"
end
