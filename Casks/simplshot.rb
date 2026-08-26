cask "simplshot" do
  version "1.7.5"
  sha256 "08eb45ffcf355540fd3ac0b4682eae309b24531b44202430e0dfde703aa8c46e"

  url "https://atle.co/simplshot/SimplShot-#{version}.zip",
      verified: "atle.co/simplshot/"
  name "SimplShot"
  desc "Screenshot app for fast captures, editing, and repeatable output sizes"
  homepage "https://www.simplshot.com/"

  auto_updates true
  depends_on macos: :tahoe

  app "SimplShot.app"
end
