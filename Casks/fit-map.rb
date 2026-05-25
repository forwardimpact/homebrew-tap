cask "fit-map" do
  version "0.15.51"
  sha256 "ab5ec06fadb9dfd602f6474e025d41c5c2601f0e57302ea8259460d3c343c325"

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
