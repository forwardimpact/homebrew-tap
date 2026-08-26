class FitOutpost < Formula
  desc "Personal operations center for daily preparation"
  homepage "https://www.forwardimpact.team/outpost/"
  version "3.12.1"

  on_linux do
    on_intel do
      url "https://github.com/forwardimpact/monorepo/releases/download/outpost@v#{version}/fit-outpost-linux-x64.tar.gz"
      sha256 "bbcd847f7c2929b04cca87227dcc1d8138a132cc4f8a4bce8fb4e61e48f4a5ad"
    end
    on_arm do
      url "https://github.com/forwardimpact/monorepo/releases/download/outpost@v#{version}/fit-outpost-linux-arm64.tar.gz"
      sha256 "22d04ab168373ed71e1a929537d6c7fd12d6a2108942e134590f1fa21159e82b"
    end
  end

  def install
    # The tarball holds only self-contained CLI executables (assets inlined at
    # compile time), so install every entry.
    bin.install Dir["*"]
  end
end
