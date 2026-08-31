class FitOutpost < Formula
  desc "Personal operations center for daily preparation"
  homepage "https://www.forwardimpact.team/outpost/"
  version "3.13.0"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/outpost@v#{version}/fit-outpost-linux-x64.tar.gz"
      sha256 "b76beb29cbe0358069e49a876a1de2fa9b9b2ecfce72a6478c71f7944c9ac279"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/outpost@v#{version}/fit-outpost-linux-arm64.tar.gz"
      sha256 "c99101d5e5a832e9613689f7e4d496de785da4e3a36efc04e6fd475bbcfdc4f7"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
