class KaiCli < Formula
  desc "kai - AI cli"
  homepage "https://kai.kepler.com"
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ramin/oh/releases/download/0.0.4/kai.amd64.tar.gz"
    sha256 "52059721375a7fd90ca52f2dd8bfb4599321c232c9c02f55c6ae237e9619341e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ramin/oh/releases/download/0.0.4/kai.amd64.tar.gz"
      sha256 "a859fb74c8c9d1f82a5e4b31292180fbf27a1c7348ed05d7926d61855123ce8b"
    end
  end

  def install
    if OS.mac?
      bin.install "kai"
    elsif OS.linux?
      if Hardware::CPU.intel?
        bin.install "kai"
      end
    end
  end

  test do
    system "which kai"
    system "kai --version"
  end
end
