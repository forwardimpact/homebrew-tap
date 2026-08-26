class FitSummit < Formula
  desc "Staff teams to reach peak performance"
  homepage "https://www.forwardimpact.team/summit/"
  version "0.1.32"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/summit@v#{version}/fit-summit-linux-x64.tar.gz"
      sha256 "42cdebcdd6659e5c3a579590440f334b90402fad875ce8cdb0c9f118a655133e"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/summit@v#{version}/fit-summit-linux-arm64.tar.gz"
      sha256 "b6db08390db6a0361eb11a094ab48e52e1bd154fa880764787d401f7c1041a1a"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
