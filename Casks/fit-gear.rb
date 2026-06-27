cask "fit-gear" do
  version "0.1.9"
  sha256 "6114323c7cf9295aecc25eb7104da1462d357843119b4910bbf1fab5f6be4931"

  url "https://github.com/forwardimpact/monorepo/releases/download/gear@v#{version}/fit-gear-#{version}-darwin-arm64.zip"
  name "Forward Impact Gear"
  desc "Services and library CLIs for Forward Impact products"
  homepage "https://www.forwardimpact.team/gear/"

  depends_on arch: :arm64

  app "fit-gear.app", target: "Forward Impact/fit-gear.app"

  # gRPC services
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-svcgraph"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-svcmcp"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-svcpathway"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-svctrace"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-svcvector"

  # Library CLIs
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-codegen"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-terrain"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-eval"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-doc"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-rc"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-xmr"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-storage"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-logger"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-svscan"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-trace"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-visualize"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-query"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-subjects"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-process-graphs"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-process-resources"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-process-vectors"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-search"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-unary"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-tiktoken"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-download-bundle"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-wiki"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^gear@v(\d+(?:\.\d+)+)$/i)
  end

  zap trash: "~/Library/Preferences/team.forwardimpact.gear.plist"
end
