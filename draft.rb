class Draft < Formula
  desc "A Markdown template generator written in Zig"
  homepage "https://github.com/linyows/draft"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-darwin-amd64.tar.gz"
      sha256 "1fb6e8ed56bc22342e6d2326295e15c79004c660c7a8956ece1426d55e23baa0"
    end

    on_arm do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-darwin-arm64.tar.gz"
      sha256 "2b7b0d86a4876cb5ea3e0a2532605dc4e453e33d9445869acd6ebe5cf0ad9ed6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-linux-amd64.tar.gz"
      sha256 "80dd0fa2f58d51ffbcb97c8bdd05c25e095507dd6010eefd31ce4401dd7ad213"
    end

    on_arm do
      url "https://github.com/linyows/draft/releases/download/v#{version}/draft-linux-arm64.tar.gz"
      sha256 "701016361431a1a3bbb6ad763bfdfa2838f8fc0985e40a01c177f032d1e00501"
    end
  end

  def install
    bin.install "draft"
  end

  test do
    assert_match "draft", shell_output("#{bin}/draft --help")
  end
end
