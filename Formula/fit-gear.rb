class FitGear < Formula
  desc "Services and library CLIs for Forward Impact products"
  homepage "https://www.forwardimpact.team/gear/"
  version "0.3.5"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/gear@v#{version}/fit-gear-linux-x64.tar.gz"
      sha256 "06cf2aec9096fee3b7550bd4f8d924d9810566ad8030beb2d0bd4315e3e7abdb"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/gear@v#{version}/fit-gear-linux-arm64.tar.gz"
      sha256 "dba1ee57b330a4f095c815d6e8914b2e5f65703bbde73b594d5873080ea37fc9"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
