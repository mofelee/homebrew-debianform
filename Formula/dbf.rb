class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.0.0-verify-test.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-verify-test.1/dbf_v0.0.0-verify-test.1_darwin_arm64.tar.gz"
      sha256 "eb50ced3395afb707d24c9203ff65fbdb60f6ae1377dff57e8e17b6971992dbe"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-verify-test.1/dbf_v0.0.0-verify-test.1_darwin_amd64.tar.gz"
      sha256 "ee595d599d85e1ad9cafb8d562af2bded51dbf874867cb5ffd1eafcb66530786"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-verify-test.1/dbf_v0.0.0-verify-test.1_linux_arm64.tar.gz"
      sha256 "8238e02092a8da7878713940a216b542778b0400501284c545bbfed1ead2e2df"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-verify-test.1/dbf_v0.0.0-verify-test.1_linux_amd64.tar.gz"
      sha256 "d39390e6e0073996f1a33dbc1d8e5bfd97df15f67034ab0b62183970fae1e0aa"
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
