class Draft < Formula
  desc "A Markdown template generator written in Zig"
  homepage "https://github.com/linyows/draft"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-darwin-amd64.tar.gz"
      sha256 "dd3f4472a60b5bfbaa3b5238fe35e4a1a195cab7ad5e14e809207b2c34e638fc"
    end

    on_arm do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-darwin-arm64.tar.gz"
      sha256 "abb3de812aa99956a67708d885ddc3ef30c1d6fe3bdabad7b66b1fe36aa47bce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-linux-amd64.tar.gz"
      sha256 "761c13972f6c32b32c4f6023ac5fb7fb2a0ed4a66f29d8f252b07845922603bf"
    end

    on_arm do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-linux-arm64.tar.gz"
      sha256 "4771b06e7102f3a79f00122121125edf903200adfb6ddd5272eff8c6a06d5258"
    end
  end

  def install
    bin.install "draft"
  end

  test do
    assert_match "draft", shell_output("#{bin}/draft --help")
  end
end
