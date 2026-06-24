class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.1.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.5/dbf_v0.1.0-beta.5_darwin_arm64.tar.gz"
      sha256 "a8eb6ff177b60d1ff6dcd4e40b83d0831d16a627c1d5010866770b7235d14563"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.5/dbf_v0.1.0-beta.5_darwin_amd64.tar.gz"
      sha256 "f24a7122196b730a2361873822002170a21d468bd602a98d4fca516db68a0ad2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.5/dbf_v0.1.0-beta.5_linux_arm64.tar.gz"
      sha256 "a705a3de607ea23871b73447ff676c109b740f3a5ee86239cf49ed99ac6b29b0"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.5/dbf_v0.1.0-beta.5_linux_amd64.tar.gz"
      sha256 "bdca7aeabfaa31c2a91bb142ad974182974a5c93071cd516bf6d884cd8954136"
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
