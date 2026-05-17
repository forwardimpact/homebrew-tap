cask "fit-map" do
  version "0.15.45"
  sha256 "b1ba5c9a87b9aefdc63ff1daa3be59868cc32f0826e167b390345dc14e4631ca"

  url "https://github.com/forwardimpact/monorepo/releases/download/map@v#{version}/fit-map-#{version}-darwin-arm64.zip"
  name "Forward Impact Map"
  desc "Define what good engineering looks like"
  homepage "https://www.forwardimpact.team/map/"

  depends_on arch: :arm64

  app "fit-map.app", target: "Forward Impact/fit-map.app"
  binary "#{appdir}/Forward Impact/fit-map.app/Contents/MacOS/fit-map"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^map@v(\d+(?:\.\d+)+)$/i)
  end

  zap trash: "~/Library/Preferences/team.forwardimpact.map.plist"
end
