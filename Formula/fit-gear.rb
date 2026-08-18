class FitGear < Formula
  desc "Services and library CLIs for Forward Impact products"
  homepage "https://www.forwardimpact.team/gear/"
  version "0.3.3"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/gear@v#{version}/fit-gear-linux-x64.tar.gz"
      sha256 "0cb66f6be80aca6a553173f3c8ffa0dde57e4403283cd341dd90edae041a582b"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/gear@v#{version}/fit-gear-linux-arm64.tar.gz"
      sha256 "0c0824436865ea70ac6e5a8aa49f0f16b14f054276deaada35b806b38175d150"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
