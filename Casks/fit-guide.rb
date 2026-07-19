cask "fit-guide" do
  version "0.1.53"
  sha256 "382ea781dd077d2d6e08f3abd6a66763f5b1df7b551df50bf5fbbdccbf574679"

  url "https://github.com/forwardimpact/monorepo/releases/download/guide@v#{version}/fit-guide-#{version}-darwin-arm64.zip"
  name "Forward Impact Guide"
  desc "AI-powered career guidance grounded in your engineering standard"
  homepage "https://www.forwardimpact.team/guide/"

  depends_on arch: :arm64

  app "fit-guide.app", target: "Forward Impact/fit-guide.app"

  # gRPC services

  # Library CLIs
  binary "#{appdir}/Forward Impact/fit-guide.app/Contents/MacOS/fit-guide"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^guide@v(\d+(?:\.\d+)+)$/i)
  end

  zap trash: "~/Library/Preferences/team.forwardimpact.guide.plist"
end
