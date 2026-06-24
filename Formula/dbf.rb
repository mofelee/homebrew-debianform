class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.1.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.6/dbf_v0.1.0-beta.6_darwin_arm64.tar.gz"
      sha256 "cd50f8d7106091d82ea41ead31da87333459816fc20befe0a3503c722cf1b152"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.6/dbf_v0.1.0-beta.6_darwin_amd64.tar.gz"
      sha256 "ac1e2b506d72d3280f1edc421399b691b3ef82a0abb28280a4fe07c85999dbb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.6/dbf_v0.1.0-beta.6_linux_arm64.tar.gz"
      sha256 "c16ea3eba3ea5fdb0bded6a428bb6a87d0413413335d17c43a89f4b1b26e2a47"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.6/dbf_v0.1.0-beta.6_linux_amd64.tar.gz"
      sha256 "e315789650292443bfb0dba966b83e4f539c407f2d43640fd82fcd71dc01357e"
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
