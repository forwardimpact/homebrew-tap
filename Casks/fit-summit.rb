cask "fit-summit" do
  version "0.1.27"
  sha256 "c1f6f4dd1ec14ea8cf1b935f78f67881b2574e5bafff2341dab4fde4e65be3ee"

  url "https://github.com/forwardimpact/monorepo/releases/download/summit@v#{version}/fit-summit-#{version}-darwin-arm64.zip"
  name "Forward Impact Summit"
  desc "Staff teams to reach peak performance"
  homepage "https://www.forwardimpact.team/summit/"

  depends_on arch: :arm64

  app "fit-summit.app", target: "Forward Impact/fit-summit.app"
  binary "#{appdir}/Forward Impact/fit-summit.app/Contents/MacOS/fit-summit"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^summit@v(\d+(?:\.\d+)+)$/i)
  end

  zap trash: "~/Library/Preferences/team.forwardimpact.summit.plist"
end
