cask "fit-pathway" do
  version "0.25.64"
  sha256 "c726988ae13c6efbf5862e805cb42f0e5b6384b3844a5466aaccf8e65cdbd59e"

  url "https://github.com/forwardimpact/monorepo/releases/download/pathway@v#{version}/fit-pathway-#{version}-darwin-arm64.zip"
  name "Forward Impact Pathway"
  desc "Navigate engineering skills and career paths"
  homepage "https://www.forwardimpact.team/pathway/"

  depends_on arch: :arm64

  app "fit-pathway.app", target: "Forward Impact/fit-pathway.app"
  binary "#{appdir}/Forward Impact/fit-pathway.app/Contents/MacOS/fit-pathway"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^pathway@v(\d+(?:\.\d+)+)$/i)
  end

  zap trash: "~/Library/Preferences/team.forwardimpact.pathway.plist"
end
