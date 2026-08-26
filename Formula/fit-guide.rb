class FitGuide < Formula
  desc "AI-powered career guidance grounded in your engineering standard"
  homepage "https://www.forwardimpact.team/guide/"
  version "0.1.54"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/guide@v#{version}/fit-guide-linux-x64.tar.gz"
      sha256 "1787c6a68ddb733a74255cfb0572d7a542638309ab46e3acd777a31fc4224852"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/guide@v#{version}/fit-guide-linux-arm64.tar.gz"
      sha256 "c21758d631feadb6b9babf64bb37962dc61f3d890ced0465231a19fb67af9fda"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
