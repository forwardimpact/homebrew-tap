class FitGuide < Formula
  desc "AI-powered career guidance grounded in your engineering standard"
  homepage "https://www.forwardimpact.team/guide/"
  version "0.1.53"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/guide@v#{version}/fit-guide-linux-x64.tar.gz"
      sha256 "67b021c06fe020419e41132227ffac4daaf9103623bc1d972a722f12731828e3"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/guide@v#{version}/fit-guide-linux-arm64.tar.gz"
      sha256 "0dc7903ae680067aa97e1425234e06e3930598f8f422655b7979656f55facc5d"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
