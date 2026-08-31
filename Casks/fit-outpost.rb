cask "fit-outpost" do
  version "3.13.0"
  sha256 "bae88112d24347a4b3a87cda0dd46bbe19eb8edbd9bc714ab12d76927c6106d4"

  url "https://github.com/forwardimpact/monorepo/releases/download/outpost@v#{version}/fit-outpost-#{version}-darwin-arm64.zip"
  name "Forward Impact Outpost"
  desc "Personal operations center for daily preparation"
  homepage "https://www.forwardimpact.team/outpost/"

  depends_on arch: :arm64

  app "fit-outpost.app", target: "Forward Impact/fit-outpost.app"

  # gRPC services

  # Library CLIs
  binary "#{appdir}/Forward Impact/fit-outpost.app/Contents/MacOS/fit-outpost"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^outpost@v(\d+(?:\.\d+)+)$/i)
  end

  zap trash: "~/Library/Preferences/team.forwardimpact.outpost.plist"
end
