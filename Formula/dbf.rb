class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.1.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.1/dbf_v0.1.0-beta.1_darwin_arm64.tar.gz"
      sha256 "0767682c4df51ce148c6ba2b135ec8e448846b881f71ac865082dd6edefef1f1"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.1/dbf_v0.1.0-beta.1_darwin_amd64.tar.gz"
      sha256 "c3635c5ccc6048f404eda86c5b01f210e3e3e0ef711bb851d7c36bdb55f41dd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.1/dbf_v0.1.0-beta.1_linux_arm64.tar.gz"
      sha256 "7babc161eab2c862a384f1601cf03532cfbc5cf8075bff1a01760ffb5d3e3660"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.1/dbf_v0.1.0-beta.1_linux_amd64.tar.gz"
      sha256 "a1f16f0351b60cd3176623873ca8676853bb22c3eb0f2b8267d4d53d48522462"
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
