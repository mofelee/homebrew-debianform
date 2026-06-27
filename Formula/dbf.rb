class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.1.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.8/dbf_v0.1.0-beta.8_darwin_arm64.tar.gz"
      sha256 "1edce34714ab5723d5e48ba2d1ebc9b59c36e0de6719ddb7afd6896feaefca69"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.8/dbf_v0.1.0-beta.8_darwin_amd64.tar.gz"
      sha256 "656a12b0a4b5d3dea59cc2d345fe0383afa2c26264007ac1655bede65810339c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.8/dbf_v0.1.0-beta.8_linux_arm64.tar.gz"
      sha256 "d8ecd20da21c3cd6a6dc0c2e72b910fe435830b560629a33af6d7ec8082af6df"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.8/dbf_v0.1.0-beta.8_linux_amd64.tar.gz"
      sha256 "0220c2ead704f7611fde99fc743712dba8a16031b0e582bc47fb3c87a830838d"
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
