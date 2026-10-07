class FitGear < Formula
  desc "Services and library CLIs for Forward Impact products"
  homepage "https://www.forwardimpact.team/gear/"
  version "0.3.9"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/gear@v#{version}/fit-gear-linux-x64.tar.gz"
      sha256 "fb912742c992eadc21da8beb06ca8caae7816ebd4c0805850cc3bfbd2c451ecd"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/gear@v#{version}/fit-gear-linux-arm64.tar.gz"
      sha256 "254f04590aecbbcc5b3331b8fb9eaf658f195cddcbc100b92504d091cc76870e"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
