class FitLandmark < Formula
  desc "Measure engineering outcomes without blaming individuals"
  homepage "https://www.forwardimpact.team/landmark/"
  version "0.1.32"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/landmark@v#{version}/fit-landmark-linux-x64.tar.gz"
      sha256 "8f0df303bebd23819d8b2b34924995cd8796adca48591aacaf7d95b1e0b9b3cf"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/landmark@v#{version}/fit-landmark-linux-arm64.tar.gz"
      sha256 "c26e34a75235039a3bc902eacf857795ee2c42a50e65d987687254748e72e2e6"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
