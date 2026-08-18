cask "simplshot" do
  version "1.7.3"
  sha256 "2fe181213b051120444d00c4bab324ac3e78f105c67878f16eee3b8097e7aa40"

  url "https://atle.co/simplshot/SimplShot-#{version}.zip",
      verified: "atle.co/simplshot/"
  name "SimplShot"
  desc "Screenshot app for fast captures, editing, and repeatable output sizes"
  homepage "https://www.simplshot.com/"

  auto_updates true
  depends_on macos: :tahoe

  app "SimplShot.app"
end
