class NoaiWatermark < Formula
  desc "Remove invisible AI watermarks and manage AI image metadata"
  homepage "https://github.com/mertizci/noai-watermark"
  version "0.1.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mertizci/noai-watermark/releases/download/v0.1.27/noai-watermark-darwin-arm64.tar.gz"
      sha256 "64c9fe9ff3b0802d1097778be0025a8a322f0fc9f5fe344c2db3658538bfb664"
    end
  end

  def install
    bin.install "noai-watermark"
  end

  test do
    assert_match "noai-watermark", shell_output("#{bin}/noai-watermark --help")
  end
end
