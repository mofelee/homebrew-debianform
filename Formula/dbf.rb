class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.0.0-macos-verify-test.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-macos-verify-test.1/dbf_v0.0.0-macos-verify-test.1_darwin_arm64.tar.gz"
      sha256 "7d771d4dc7fee9d7a01b018c24fa06b15455ce7c1adf0df5da515e978513ec4d"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-macos-verify-test.1/dbf_v0.0.0-macos-verify-test.1_darwin_amd64.tar.gz"
      sha256 "1d01e59265280bf021727dc7433714c28e5441a3d3d49f481c17c3feb960a9d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-macos-verify-test.1/dbf_v0.0.0-macos-verify-test.1_linux_arm64.tar.gz"
      sha256 "af6fe2237ae5fcddf54d15fcaa2b9ecc8894cbd8fe269d3fa08e562188dde1f1"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-macos-verify-test.1/dbf_v0.0.0-macos-verify-test.1_linux_amd64.tar.gz"
      sha256 "fef62235edc4152fe36ef5aee1b041deabb6951103084ad404291be080ce584c"
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
