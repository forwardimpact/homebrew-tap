cask "fit-landmark" do
  version "0.1.27"
  sha256 "0964905c68f658163b8853ceffa6b04dbc205877bfdba56562ec97748b43f5c4"

  url "https://github.com/forwardimpact/monorepo/releases/download/landmark@v#{version}/fit-landmark-#{version}-darwin-arm64.zip"
  name "Forward Impact Landmark"
  desc "Measure engineering outcomes without blaming individuals"
  homepage "https://www.forwardimpact.team/landmark/"

  depends_on arch: :arm64

  app "fit-landmark.app", target: "Forward Impact/fit-landmark.app"
  binary "#{appdir}/Forward Impact/fit-landmark.app/Contents/MacOS/fit-landmark"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^landmark@v(\d+(?:\.\d+)+)$/i)
  end

  zap trash: "~/Library/Preferences/team.forwardimpact.landmark.plist"
end
