class KaiCli < Formula
  desc "kai - AI cli"
  homepage "https://kai.kepler.com"
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ramin/oh/releases/download/0.0.4/kai.darwin-x64.tar.gz"
    sha256 "01d43c54cf4bb23d4d532ceb2e721c3df90f6251a020c9c8df339522628f7084"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ramin/oh/releases/download/0.0.4/kai.amd64.tar.gz"
      # sha256 "a859fb74c8c9d1f82a5e4b31292180fbf27a1c7348ed05d7926d61855123ce8b"
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
