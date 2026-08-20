cask "simplshot" do
  version "1.7.4"
  sha256 "95b63a2a43d9c5a79a83e8bff156deb279f24a70d99c6275fe2f19bfb70e81cd"

  url "https://atle.co/simplshot/SimplShot-#{version}.zip",
      verified: "atle.co/simplshot/"
  name "SimplShot"
  desc "Screenshot app for fast captures, editing, and repeatable output sizes"
  homepage "https://www.simplshot.com/"

  auto_updates true
  depends_on macos: :tahoe

  app "SimplShot.app"
end
