class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.0.0-final-release-test.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-final-release-test.1/dbf_v0.0.0-final-release-test.1_darwin_arm64.tar.gz"
      sha256 "08ad20c842db57e9668add2e144cc7af5267e438a8c3a72bcffc499c5bf67b63"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-final-release-test.1/dbf_v0.0.0-final-release-test.1_darwin_amd64.tar.gz"
      sha256 "034eadba48c077c35f8af8ad1b5a90d1a020d6c7d5d9e01cda631495be3d4334"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-final-release-test.1/dbf_v0.0.0-final-release-test.1_linux_arm64.tar.gz"
      sha256 "3135f3b0361d0563ad321b2d7f3f74506edfd533c4ec60d0ba2b155d77c88928"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-final-release-test.1/dbf_v0.0.0-final-release-test.1_linux_amd64.tar.gz"
      sha256 "cf587895624e097388234c8be4e48f313edb6e12ad5079a4633bb66344834592"
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
