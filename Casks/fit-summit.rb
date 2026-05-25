cask "fit-summit" do
  version "0.1.23"
  sha256 "058160f9f5961ffae72258327b4a0dac55239fa996512f95aeb5b303b2d68aff"

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
