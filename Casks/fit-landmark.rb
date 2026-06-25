cask "fit-landmark" do
  version "0.1.29"
  sha256 "f10ed6f71912729933a6bf0ae8b7184b0b62b3bc998209136c79004827f9d5ee"

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
