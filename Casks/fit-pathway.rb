cask "fit-pathway" do
  version "0.26.9"
  sha256 "226616c5342563f696a8914393fef0c45ffb2263c4a3d819d1465fa480830d3e"

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
