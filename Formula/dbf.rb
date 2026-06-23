class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.1.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.2/dbf_v0.1.0-beta.2_darwin_arm64.tar.gz"
      sha256 "93e9ad9e097dc128afda53862c267aa66a46396fa915123b9402371d32655763"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.2/dbf_v0.1.0-beta.2_darwin_amd64.tar.gz"
      sha256 "3c11336b9716e68765d18b364462323f476baa05dc19f77b23e5483cc7b71228"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.2/dbf_v0.1.0-beta.2_linux_arm64.tar.gz"
      sha256 "cda5aa8d549f62574f2e08d14f80086180e823433be9aa09ac3658196d131e23"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.2/dbf_v0.1.0-beta.2_linux_amd64.tar.gz"
      sha256 "6f139fcaa74ae111d7d224f2c4f85af8d5f0bb15a09c347e5ca36ce3750075ab"
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
