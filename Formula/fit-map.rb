class FitMap < Formula
  desc "Define what good engineering looks like"
  homepage "https://www.forwardimpact.team/map/"
  version "0.15.64"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/map@v#{version}/fit-map-linux-x64.tar.gz"
      sha256 "affb6bced004dc07ce2ec82ced92eaba125f71bc90c36723202b160bc0dea3ae"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/map@v#{version}/fit-map-linux-arm64.tar.gz"
      sha256 "88b3e94cc3ea99e006f5998cefd0c74b1ee8829fee44bb69f70577b7d4f2fccc"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
