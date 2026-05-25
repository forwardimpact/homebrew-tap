cask "fit-guide" do
  version "0.1.44"
  sha256 "cdacd3f31fe3aec00c98ef2f3452c853cf639d2b7e7b33f2b4d280b3785556a8"

  url "https://github.com/forwardimpact/monorepo/releases/download/guide@v#{version}/fit-guide-#{version}-darwin-arm64.zip"
  name "Forward Impact Guide"
  desc "AI-powered career guidance grounded in your engineering standard"
  homepage "https://www.forwardimpact.team/guide/"

  depends_on arch: :arm64

  app "fit-guide.app", target: "Forward Impact/fit-guide.app"
  binary "#{appdir}/Forward Impact/fit-guide.app/Contents/MacOS/fit-guide"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^guide@v(\d+(?:\.\d+)+)$/i)
  end

  zap trash: "~/Library/Preferences/team.forwardimpact.guide.plist"
end
