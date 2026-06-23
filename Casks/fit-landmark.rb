cask "fit-landmark" do
  version "0.1.28"
  sha256 "cefd98846787486f7d2ed8524896ebc692785e76793bf25b93aaf98f1a52d5c3"

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
