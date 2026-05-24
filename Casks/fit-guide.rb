cask "fit-guide" do
  version "0.1.43"
  sha256 "8946ae4c47a5c35882c86d7b93c0eb2632ca43d9233e9d17a388070482099c3e"

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
