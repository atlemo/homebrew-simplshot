cask "simplshot" do
  version "1.6.7"
  sha256 "adf768707e496c73a8d5d41a5b525d55839346eec689e930a0917341bb079c78"

  url "https://atle.co/simplshot/SimplShot-#{version}.zip",
      verified: "atle.co/simplshot/"
  name "SimplShot"
  desc "Screenshot app for fast captures, editing, and repeatable output sizes"
  homepage "https://www.simplshot.com/"

  auto_updates true
  depends_on macos: :tahoe

  app "SimplShot.app"
end
