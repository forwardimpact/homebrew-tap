cask "fit-guide" do
  version "0.1.49"
  sha256 "9dacd7239095590e8de62b434b0f51bfabfdfb0281f249e1b303bfbca9cecdde"

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
