cask "fit-map" do
  version "0.15.48"
  sha256 "a2880d93cda7d39b81c4c3b942b8d25a5de2c55598e9510343c64f1c7d799f36"

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
