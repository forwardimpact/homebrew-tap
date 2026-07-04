cask "fit-summit" do
  version "0.1.30"
  sha256 "96984696ef1af17110ffe2914e6ec026ad6bbb07576b0ee3402ce6408bd48ff3"

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
