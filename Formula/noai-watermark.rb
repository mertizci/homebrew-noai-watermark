class NoaiWatermark < Formula
  desc "Remove invisible AI watermarks and manage AI image metadata"
  homepage "https://github.com/mertizci/noai-watermark"
  version "0.1.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mertizci/noai-watermark/releases/download/v0.1.22/noai-watermark-darwin-arm64.tar.gz"
      sha256 "d9c27fa58c3e38db5063c35044f63f44cd7372016cb008299196f7e265827d96"
    end
  end

  def install
    bin.install "noai-watermark"
  end

  test do
    assert_match "noai-watermark", shell_output("#{bin}/noai-watermark --help")
  end
end
