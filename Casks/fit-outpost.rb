cask "fit-outpost" do
  version "3.5.1"
  sha256 "369db3e8a8853a66b2bf4d03d288c888da8b5a19a1c7c72b95b2d82019041b3c"

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
