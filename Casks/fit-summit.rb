cask "fit-summit" do
  version "0.1.28"
  sha256 "31fb0c4116d1ddde0f7b370f088449a0828c06f0485c5b2b93f1851aae0f211d"

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
