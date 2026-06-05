cask "fit-pathway" do
  version "0.26.2"
  sha256 "516da2f7af581f8706136ef38e902a7efb2e2aa31cc20cfb2713e0b5b7e0a2a3"

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
