cask "fit-summit" do
  version "0.1.19"
  sha256 "fb0f22f659ee292a1045b62842173c98abb4993a53da6c7cc0dc6beeb5aa3115"

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
