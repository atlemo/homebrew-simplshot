cask "simplshot" do
  version "1.7.0"
  sha256 "b528245d8b37e7df6705c59e08c38adfa6768819a7b0b17300be46d6ee44809d"

  url "https://atle.co/simplshot/SimplShot-#{version}.zip",
      verified: "atle.co/simplshot/"
  name "SimplShot"
  desc "Screenshot app for fast captures, editing, and repeatable output sizes"
  homepage "https://www.simplshot.com/"

  auto_updates true
  depends_on macos: :tahoe

  app "SimplShot.app"
end
