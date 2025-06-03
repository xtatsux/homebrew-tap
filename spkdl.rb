class Spkdl < Formula
  desc "SpeakerDeck PDF downloader CLI tool"
  homepage "https://github.com/xtatsux/spkdl"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xtatsux/spkdl/releases/download/v0.1.0/spkdl_Darwin_arm64.tar.gz"
      sha256 "579a20c0ce984e5363022720b0c7fac0ea5cf7ca68ca7da7e0fffd058b300a12"
    else
      url "https://github.com/xtatsux/spkdl/releases/download/v0.1.0/spkdl_Darwin_x86_64.tar.gz"
      sha256 "9614999ebf1d176f01c23b00517dafe94463e16f5d9e7c4fe3813e8fe0d75153"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xtatsux/spkdl/releases/download/v0.1.0/spkdl_Linux_arm64.tar.gz"
      sha256 "8e18a509a8c6de894f267979fed05b14d15392e1b38f4c424ccd1b1c2e414c2f"
    else
      url "https://github.com/xtatsux/spkdl/releases/download/v0.1.0/spkdl_Linux_x86_64.tar.gz"
      sha256 "f297be0a8af62de188c94598dcc0b833fe406c9012bc3f44c5266146b5cceb2c"
    end
  end

  def install
    bin.install "spkdl"
  end

  test do
    assert_match "spkdl version", shell_output("#{bin}/spkdl --version")
  end
end