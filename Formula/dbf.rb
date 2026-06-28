class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.2.0-alpha.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.2.0-alpha.1/dbf_v0.2.0-alpha.1_darwin_arm64.tar.gz"
      sha256 "01e775decb39ce139f93139e3a2946a29a0317ea626a597d6309dfadaa42fed1"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.2.0-alpha.1/dbf_v0.2.0-alpha.1_darwin_amd64.tar.gz"
      sha256 "953ffdd4ae64caa14ff10f2b3fad633766f011f5a067fa8dbc88c44cb45d7474"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.2.0-alpha.1/dbf_v0.2.0-alpha.1_linux_arm64.tar.gz"
      sha256 "bb6930f2e8bb8f8035b70e15d8b3665a5d7de85fe4dcec289e0620037eb6e1b9"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.2.0-alpha.1/dbf_v0.2.0-alpha.1_linux_amd64.tar.gz"
      sha256 "e7c4ad57ed934b820a2c2f8f5ad4663f93ebc4a34f5f3275a01a49a1f419df9e"
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
