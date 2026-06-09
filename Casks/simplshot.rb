cask "simplshot" do
  version "1.6.6"
  sha256 "c63051e7a12c60f9ed34a72b55febe41bff3e0c53b25b6e624afd851da42494c"

  url "https://atle.co/simplshot/SimplShot-#{version}.zip",
      verified: "atle.co/simplshot/"
  name "SimplShot"
  desc "Screenshot app for fast captures, editing, and repeatable output sizes"
  homepage "https://www.simplshot.com/"

  auto_updates true
  depends_on macos: :tahoe

  app "SimplShot.app"
end
