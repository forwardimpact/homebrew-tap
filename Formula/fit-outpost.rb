class FitOutpost < Formula
  desc "Personal operations center for daily preparation"
  homepage "https://www.forwardimpact.team/outpost/"
  version "3.12.0"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/outpost@v#{version}/fit-outpost-linux-x64.tar.gz"
      sha256 "76c963a8ccdeee8a0de35dab80cf3fe3d210be4acf792d08fb464c310483a0a3"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/outpost@v#{version}/fit-outpost-linux-arm64.tar.gz"
      sha256 "24305d9a110cf904e8248a3e8214a56c9e6964ce80a44f2f40654eedd5b4c613"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
