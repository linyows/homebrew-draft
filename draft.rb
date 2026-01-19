class Draft < Formula
  desc "A Markdown template generator written in Zig"
  homepage "https://github.com/linyows/draft"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-darwin-amd64.tar.gz"
      sha256 "099b4bf821b9ad5e12baab95009822cd5e6490e7a7b43496267fb2912632dadc"
    end

    on_arm do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-darwin-arm64.tar.gz"
      sha256 "557e05490cf88d7d731d59ae090a8f0c993d4c87a013b1b7887ee42926aea3ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-linux-amd64.tar.gz"
      sha256 "a7f59f8027abacb48617941303b29d3e77c73fb436541375b8ead045068e59d9"
    end

    on_arm do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-linux-arm64.tar.gz"
      sha256 "e1f301b5b9039eced1b7576ab1eed24edfee731f3a7ea93e7cf64a08a399b29b"
    end
  end

  def install
    bin.install "draft"
  end

  test do
    assert_match "draft", shell_output("#{bin}/draft --help")
  end
end
