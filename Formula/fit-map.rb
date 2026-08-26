class FitMap < Formula
  desc "Define what good engineering looks like"
  homepage "https://www.forwardimpact.team/map/"
  version "0.15.65"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/map@v#{version}/fit-map-linux-x64.tar.gz"
      sha256 "1f11839ecd34629a5d61a5eb5130be3fed820622f23be01f028cb9678d14d0da"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/map@v#{version}/fit-map-linux-arm64.tar.gz"
      sha256 "917a619626f09843833d31eb1c605c0ea2f5d6041496c26cbf33badbd4ca0fd4"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
