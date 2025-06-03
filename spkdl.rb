class Spkdl < Formula
  desc "SpeakerDeck PDF downloader CLI tool"
  homepage "https://github.com/xtatsux/spkdl"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xtatsux/spkdl/releases/download/v0.1.0/spkdl_Darwin_arm64.tar.gz"
      sha256 "05bcc8d83269cc2e71cd1650ed598d590ae4215ff51a9d245532469894055e9c"
    else
      url "https://github.com/xtatsux/spkdl/releases/download/v0.1.0/spkdl_Darwin_x86_64.tar.gz"
      sha256 "f2d0b9137a18b56facba1d855a5c443d8b9645919799aec1fbbe4908872a6987"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xtatsux/spkdl/releases/download/v0.1.0/spkdl_Linux_arm64.tar.gz"
      sha256 "8dea0cf8d4773686ad41d6171f34608d1de69f7a1864789a6bde5737101ed713"
    else
      url "https://github.com/xtatsux/spkdl/releases/download/v0.1.0/spkdl_Linux_x86_64.tar.gz"
      sha256 "d99994d2c2479d598c3feacf4b573422f8d55685205831b6bc6c74df9f0397d7"
    end
  end

  def install
    bin.install "spkdl"
  end

  test do
    assert_match "spkdl version", shell_output("#{bin}/spkdl --version")
  end
end