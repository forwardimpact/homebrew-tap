cask "fit-gear" do
  version "0.2.0"
  sha256 "50a52721b551b918f88e83c0690f18b30713f1030e0de10a97d3895ba2cab97e"

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
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-svcspan"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-svcvector"

  # Library CLIs
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-codegen"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-terrain"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/gemba-harness"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-doc"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-rc"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/gemba-xmr"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-storage"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-logger"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-svscan"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/gemba-trace"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-visualize"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-process"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-rag"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-unary"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-tiktoken"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/gemba-wiki"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/gemba-benchmark"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/fit-pack"
  binary "#{appdir}/Forward Impact/fit-gear.app/Contents/MacOS/coaligned"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^gear@v(\d+(?:\.\d+)+)$/i)
  end

  zap trash: "~/Library/Preferences/team.forwardimpact.gear.plist"
end
