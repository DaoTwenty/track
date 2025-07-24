class Track < Formula
  desc "CLI project time tracking tool"
  homepage "https://github.com/DaoTwenty/track"
  url "https://github.com/DaoTwenty/track/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "<your_tarball_sha256>"
  license "MIT"

  def install
    system "make", "install", "INSTALL_DIR=#{bin}"
  end

  test do
    system "#{bin}/track", "-h"
  end
end
