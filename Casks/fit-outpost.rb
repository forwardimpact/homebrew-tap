cask "fit-outpost" do
  version "3.9.0"
  sha256 "87ad2cac8255610ea13850a99ff8e088fcfa3f160c59030dcaa428322b6dc347"

  url "https://github.com/forwardimpact/monorepo/releases/download/outpost@v#{version}/fit-outpost-#{version}-darwin-arm64.zip"
  name "Forward Impact Outpost"
  desc "Personal operations center for daily preparation"
  homepage "https://www.forwardimpact.team/outpost/"

  depends_on arch: :arm64

  app "fit-outpost.app", target: "Forward Impact/fit-outpost.app"
  binary "#{appdir}/Forward Impact/fit-outpost.app/Contents/MacOS/fit-outpost"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^outpost@v(\d+(?:\.\d+)+)$/i)
  end

  zap trash: "~/Library/Preferences/team.forwardimpact.outpost.plist"
end
