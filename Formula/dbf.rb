class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.0.0-supply-chain-test.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-supply-chain-test.1/dbf_v0.0.0-supply-chain-test.1_darwin_arm64.tar.gz"
      sha256 "ea0260321e0833ec7d57d2fa56a853289cc4489a6fbcfbf53919d28724cd43e2"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-supply-chain-test.1/dbf_v0.0.0-supply-chain-test.1_darwin_amd64.tar.gz"
      sha256 "3399e34ce1c97e0578780a5f60cd8847d0155ed6b8ec331a9fc70513e66c28bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-supply-chain-test.1/dbf_v0.0.0-supply-chain-test.1_linux_arm64.tar.gz"
      sha256 "4c77fee3b3458f0f1f7b81fea383e4b711f0858856f11e3dc866c767ff2d9b9d"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-supply-chain-test.1/dbf_v0.0.0-supply-chain-test.1_linux_amd64.tar.gz"
      sha256 "e9d2407d4f518551cce73c31720a9a1887e6a21e6c5c9fc711f88e6798c80527"
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
