class FitPathway < Formula
  desc "Navigate engineering skills and career paths"
  homepage "https://www.forwardimpact.team/pathway/"
  version "0.26.10"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/pathway@v#{version}/fit-pathway-linux-x64.tar.gz"
      sha256 "dd88f01301b4538e6512f0f58eecf3aa098386045cc4d7089966a774cb0a2b5d"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/pathway@v#{version}/fit-pathway-linux-arm64.tar.gz"
      sha256 "04dc4f5547c61c0f3e9086cfed46ddbfc737235e7d1f829f6f7458ba4e8742db"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
