class Track < Formula
  desc "CLI project time tracking tool"
  homepage "https://github.com/DaoTwenty/track"
  url "https://github.com/DaoTwenty/track/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "da03022729904432a83da7de2b28c945eacef15d770ea2dfd71d27ca1ae182ae"
  license "MIT"

  def install
    system "make", "install", "INSTALL_DIR=#{bin}"
  end

  test do
    system "bin/track", "-h"
  end
end
