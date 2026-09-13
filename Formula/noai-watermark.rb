class NoaiWatermark < Formula
  desc "Remove invisible AI watermarks and manage AI image metadata"
  homepage "https://github.com/mertizci/noai-watermark"
  version "0.1.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mertizci/noai-watermark/releases/download/v0.1.32/noai-watermark-darwin-arm64.tar.gz"
      sha256 "0862725b6febe6705ef1fc913fa4af758a38b65174e70373e8448ed96a216950"
    end
  end

  def install
    bin.install "noai-watermark"
  end

  test do
    assert_match "noai-watermark", shell_output("#{bin}/noai-watermark --help")
  end
end
