class FitGear < Formula
  desc "Services and library CLIs for Forward Impact products"
  homepage "https://www.forwardimpact.team/gear/"
  version "0.3.10"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/gear@v#{version}/fit-gear-linux-x64.tar.gz"
      sha256 "c4b005e63f606a9aa6bb09d86afac71e797187ab473f3d7b2085111889c7c654"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/gear@v#{version}/fit-gear-linux-arm64.tar.gz"
      sha256 "30ddf467c4a77c001d4ddffca51dfe5b0926b7db68f68ff3459d1e0629b6301b"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
