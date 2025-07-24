class Track < Formula
  desc "CLI project time tracking tool"
  homepage "https://github.com/DaoTwenty/track"
  url "https://github.com/DaoTwenty/track/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "616a1504804b7c6b909cb6fe8b465bf425de6dfc262d42bee60046768cbcb566"
  license "MIT"

  def install
    system "make", "install", "INSTALL_DIR=#{bin}"
  end

  test do
    system "#{bin}/track", "-h"
  end
end
