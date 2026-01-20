class Draft < Formula
  desc "A Markdown template generator written in Zig"
  homepage "https://github.com/linyows/draft"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-darwin-amd64.tar.gz"
      sha256 "b36167d206b9d7c23430828d676b1e1b83c7bbe67f27c3a8f70f31e03e0c427b"
    end

    on_arm do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-darwin-arm64.tar.gz"
      sha256 "9c4211abfa2548ac4ae36aea69c238c8cbf7179c4661ebe3659ae32bb860ebba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-linux-amd64.tar.gz"
      sha256 "b1ebce31e2a60a47723cfd0346f771d7addd5ce43417309f4e0263b83e5ad433"
    end

    on_arm do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-linux-arm64.tar.gz"
      sha256 "e1254e4c03f229d146de11df0a01854b98b27626c942ea2fb893ad253b35c02f"
    end
  end

  def install
    bin.install "draft"
  end

  test do
    assert_match "draft", shell_output("#{bin}/draft --help")
  end
end
