cask "fit-outpost" do
  version "3.6.0"
  sha256 "c12ecf640da1b9097dd5121d0d39091cc5bc42df8cb1f9845a9a8c094b969bec"

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
