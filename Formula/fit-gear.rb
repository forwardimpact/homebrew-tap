class FitGear < Formula
  desc "Services and library CLIs for Forward Impact products"
  homepage "https://www.forwardimpact.team/gear/"
  version "0.3.2"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/gear@v#{version}/fit-gear-linux-x64.tar.gz"
      sha256 "01150c21db71a8cee8b5424bb589067249b0f6f1cfd8192edd7842d53a268b90"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/gear@v#{version}/fit-gear-linux-arm64.tar.gz"
      sha256 "fc2e3856107f4a670cba13f05e586abad46fae032123b4342d9591c3f1cfcc3b"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
