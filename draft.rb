class Draft < Formula
  desc "A Markdown template generator written in Zig"
  homepage "https://github.com/linyows/draft"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-darwin-amd64.tar.gz"
      sha256 "41d1b64fcd59069e3b6e30bb1b3f8eacdca58d1adc2c647973b5985170e04d01"
    end

    on_arm do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-darwin-arm64.tar.gz"
      sha256 "0daebada98b65dcd4e7a10991f2c0dbc5b1cebc203a1bbdd36d04f7cdf4c0913"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-linux-amd64.tar.gz"
      sha256 "bf1441056269dcd111966dc3c66f2fb45bf6563e165b658e7e9ce27647f3d191"
    end

    on_arm do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-linux-arm64.tar.gz"
      sha256 "58a3d1bcfe83d270db5b8458b7661bf00a66001e70859fe7e188046fea97bd4b"
    end
  end

  def install
    bin.install "draft"
  end

  test do
    assert_match "draft", shell_output("#{bin}/draft --help")
  end
end
