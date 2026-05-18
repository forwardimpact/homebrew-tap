cask "fit-landmark" do
  version "0.1.19"
  sha256 "c1aed8fb8587f936a8329f6a9d6a391df6d7b70b81008f36f942fe09fe42b14b"

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
