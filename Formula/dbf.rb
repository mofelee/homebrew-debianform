class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.1.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.3/dbf_v0.1.0-beta.3_darwin_arm64.tar.gz"
      sha256 "2a7a2a224ee848b86ecfd41ccc9d46c9c115255b3c512c70524ae0641aaba23f"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.3/dbf_v0.1.0-beta.3_darwin_amd64.tar.gz"
      sha256 "b7c205300df37af56b0a43c752118780a9b43a1a66930a10117cca90163386a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.3/dbf_v0.1.0-beta.3_linux_arm64.tar.gz"
      sha256 "14fe414ba4c2980ed697227e031e678c02f84efb427f1a8cf4b2a338205837e1"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.3/dbf_v0.1.0-beta.3_linux_amd64.tar.gz"
      sha256 "7babd0b2798fd48d9d5928cef15ac2946e538fd5f7d71b6f9591e8e1c2b5d98f"
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
