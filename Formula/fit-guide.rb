class FitGuide < Formula
  desc "AI-powered career guidance grounded in your engineering standard"
  homepage "https://www.forwardimpact.team/guide/"
  version "0.1.55"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/guide@v#{version}/fit-guide-linux-x64.tar.gz"
      sha256 "461b058acbccbff62afb7f7edeee64623828c0193fb68d5865e84625cb5737ba"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/guide@v#{version}/fit-guide-linux-arm64.tar.gz"
      sha256 "0f74b6822554ad4f90e54402f9bb431ed5e403c7e7bc45ea5b8f0e321e5c30d4"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
