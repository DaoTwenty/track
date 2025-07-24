class Track < Formula
  desc "CLI project time tracking tool"
  homepage "https://github.com/DaoTwenty/track"
  url "https://github.com/DaoTwenty/track/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "11285b1eda487fc164efe7af747d55e00278132c681cdb2bcdf7aeecc88dcd3f"
  license "MIT"

  def install
    system "make", "install", "INSTALL_DIR=#{bin}"
  end

  test do
    system "bin/track", "-h"
  end
end
