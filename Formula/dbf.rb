class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.1.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.4/dbf_v0.1.0-beta.4_darwin_arm64.tar.gz"
      sha256 "624076ff55a25daa46706229c23307192adfa4b6caa6ac1e5e504f684bbd2737"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.4/dbf_v0.1.0-beta.4_darwin_amd64.tar.gz"
      sha256 "d04fe319d6b7c2931df83fa33ce071bb9cdade4ea1cea0f6797e424766f48f82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.4/dbf_v0.1.0-beta.4_linux_arm64.tar.gz"
      sha256 "34d1598cea8d5d50f3b6948a7f74279b2b1a9e6957ac961742b27c7e839373d5"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.4/dbf_v0.1.0-beta.4_linux_amd64.tar.gz"
      sha256 "8e49c3ba4d57501667f6ed49c24e9f6164de56cbbe73ba2c7b86c106d86c4dfd"
    end
  end

  def install
    bin.install "dbf"
    pkgshare.install "README.md", "docs", "examples"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbf version")
  end
end
