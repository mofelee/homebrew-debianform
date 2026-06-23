class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.0.0-homebrew-test.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-homebrew-test.2/dbf_v0.0.0-homebrew-test.2_darwin_arm64.tar.gz"
      sha256 "705be56c3440a21a9968213a551cd419920507db969772de1cbd146e5680fed7"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-homebrew-test.2/dbf_v0.0.0-homebrew-test.2_darwin_amd64.tar.gz"
      sha256 "b0732ac9c6affe457efce159f2dbd2649b903c5c68559b4405ef6df818717407"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-homebrew-test.2/dbf_v0.0.0-homebrew-test.2_linux_arm64.tar.gz"
      sha256 "a86a733b59e1bc15397fed772e31e4c8c67ea930d71f19b7792fcfbf90e77a88"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-homebrew-test.2/dbf_v0.0.0-homebrew-test.2_linux_amd64.tar.gz"
      sha256 "272fc59fce5fa27587bd488e75b0940f19ae2edae1446736a78e7b0979b491c5"
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
