class Draft < Formula
  desc "A Markdown template generator written in Zig"
  homepage "https://github.com/linyows/draft"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-darwin-amd64.tar.gz"
      sha256 "eef0585637e4dd7e6857890f37eac1f1660e7961d970aa8b9af7f5271df309b2"
    end

    on_arm do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-darwin-arm64.tar.gz"
      sha256 "784459b6fa0c6015ebc1fd529fa13143c110bc5678b038f6bb2adbb1f6481320"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-linux-amd64.tar.gz"
      sha256 "d176e89c6d7a57e06acb582f1d914b6ab9a7682a3df01eaf42d724ff6ffae355"
    end

    on_arm do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-linux-arm64.tar.gz"
      sha256 "c723d7545653d35412ac517e446fa02b3c6705dcde19f33b811ce12fe9d21a6b"
    end
  end

  def install
    bin.install "draft"
  end

  test do
    assert_match "draft", shell_output("#{bin}/draft --help")
  end
end
