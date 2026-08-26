cask "fit-map" do
  version "0.15.65"
  sha256 "f0da22c6dddefeeba4c60d9e6225f22c2a200eda55658ff1fe59cdf2c56e532c"

  url "https://github.com/forwardimpact/monorepo/releases/download/map@v#{version}/fit-map-#{version}-darwin-arm64.zip"
  name "Forward Impact Map"
  desc "Define what good engineering looks like"
  homepage "https://www.forwardimpact.team/map/"

  depends_on arch: :arm64

  app "fit-map.app", target: "Forward Impact/fit-map.app"

  # gRPC services

  # Library CLIs
  binary "#{appdir}/Forward Impact/fit-map.app/Contents/MacOS/fit-map"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^map@v(\d+(?:\.\d+)+)$/i)
  end

  zap trash: "~/Library/Preferences/team.forwardimpact.map.plist"
end
