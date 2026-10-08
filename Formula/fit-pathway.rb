class FitPathway < Formula
  desc "Navigate engineering skills and career paths"
  homepage "https://www.forwardimpact.team/pathway/"
  version "0.26.11"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/pathway@v#{version}/fit-pathway-linux-x64.tar.gz"
      sha256 "e55bcd1abb671a502aedf0c2f5f273dabc20f2734300bf535658d80eefe9e279"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/pathway@v#{version}/fit-pathway-linux-arm64.tar.gz"
      sha256 "75c71360aab601ee0c3384cd189fbf1f6ff1eecb3436e132cbc86188df4ebfa7"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
