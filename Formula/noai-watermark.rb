class NoaiWatermark < Formula
  desc "Remove invisible AI watermarks and manage AI image metadata"
  homepage "https://github.com/mertizci/noai-watermark"
  version "0.1.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mertizci/noai-watermark/releases/download/v0.1.21/noai-watermark-darwin-arm64.tar.gz"
      sha256 "a6fde15c20af3e603a776c7641ce4537054a31f14e01fb0283815b1b523634d0"
    end
  end

  def install
    bin.install "noai-watermark"
  end

  test do
    assert_match "noai-watermark", shell_output("#{bin}/noai-watermark --help")
  end
end
