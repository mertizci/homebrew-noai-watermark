class NoaiWatermark < Formula
  desc "Remove invisible AI watermarks and manage AI image metadata"
  homepage "https://github.com/mertizci/noai-watermark"
  version "0.1.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mertizci/noai-watermark/releases/download/v0.1.31/noai-watermark-darwin-arm64.tar.gz"
      sha256 "0cdb96ee1f2d877b64a3acdf6083ef683021db1e505dd9d7683bbf5daf8e60be"
    end
  end

  def install
    bin.install "noai-watermark"
  end

  test do
    assert_match "noai-watermark", shell_output("#{bin}/noai-watermark --help")
  end
end
