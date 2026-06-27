class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.1.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.7/dbf_v0.1.0-beta.7_darwin_arm64.tar.gz"
      sha256 "bce4bc90ce380f501a9db2e4c4eda7526990846c8ae9794e02b4f661bbba01bd"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.7/dbf_v0.1.0-beta.7_darwin_amd64.tar.gz"
      sha256 "15e0827164225a5fa127495ded74e2eb004903de8cff87ff5200b9ee0289968a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.7/dbf_v0.1.0-beta.7_linux_arm64.tar.gz"
      sha256 "172a717c65493eefe47736129c630703e6bfcda85726cfda868fc1b8916bb316"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.1.0-beta.7/dbf_v0.1.0-beta.7_linux_amd64.tar.gz"
      sha256 "5c1caaf61d70caacf3d4b7d752b5e1f8adfbf305c9686ab84137a20d3226b987"
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
