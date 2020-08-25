class KaiCLI < Formula
  desc "kai - AI cli"
  homepage "https://kai.kepler.com"
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ramin/oh/releases/download/0.0.2/kai.darwin-x64"
    sha256 "7afbfa31c6133faef6723026844ac0019e922dcea44dee5b39034faa269fc0e6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ramin/oh/releases/download/0.0.2/kai.darwin-x64"
      sha256 "0f39bd35c9bcc1da172a7bc6d5774cc8be0a13f951fc8de18ef8f5b9c504333d"
    end
  end

  def install
    if OS.mac?
      bin.install "kai.darwin-x64": "kai"
    elsif OS.linux?
      if Hardware::CPU.intel?
        bin.install "kai.amd64": "kai"
      end
    end
  end

  test do
    system "which kai"
    system "kai --version"
  end
end
