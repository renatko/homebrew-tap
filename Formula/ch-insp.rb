class ChInsp < Formula
  desc "Read-only terminal UI for ClickHouse materialized views"
  homepage "https://github.com/renatko/ch_insp"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/renatko/ch_insp/releases/download/0.1.1/ch_insp_darwin_arm64.tar.gz"
      sha256 "23c635ded2598382f5c085b878efb2cdc188a790f1acfc5b5aa68f04453bff72"
    end
    on_intel do
      url "https://github.com/renatko/ch_insp/releases/download/0.1.1/ch_insp_darwin_amd64.tar.gz"
      sha256 "80150e15471f0ac222b6bcff54ab6a80e3d04f15d3ae244ea0a9bd41028e5890"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/renatko/ch_insp/releases/download/0.1.1/ch_insp_linux_arm64.tar.gz"
      sha256 "7e41c4183fa468a6e9c1d4165a498cea5941d24a642465d92e149470bed6bcc4"
    end
    on_intel do
      url "https://github.com/renatko/ch_insp/releases/download/0.1.1/ch_insp_linux_amd64.tar.gz"
      sha256 "7d4077c872e35e65df7ad83c835ce6c9feb090acc80487b43f6b8ba5214809f3"
    end
  end

  def install
    bin.install "ch_insp"
  end

  test do
    assert_match "Usage: ch_insp", shell_output("#{bin}/ch_insp --help 2>&1")
  end
end
