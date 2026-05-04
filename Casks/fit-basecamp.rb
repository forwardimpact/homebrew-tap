cask "fit-basecamp" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/forwardimpact/monorepo/releases/download/outpost@v#{version}/fit-outpost-#{version}-darwin-arm64.zip"
  name "Forward Impact Basecamp"
  desc "Renamed to fit-outpost — install forwardimpact/tap/fit-outpost instead"
  homepage "https://www.forwardimpact.team/outpost/"

  deprecate! date: "2026-04-30", because: "renamed to fit-outpost"

  depends_on arch: :arm64
end
