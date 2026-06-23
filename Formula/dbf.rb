class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.0.0-homebrew-test.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-homebrew-test.1/dbf_v0.0.0-homebrew-test.1_darwin_arm64.tar.gz"
      sha256 "580b9693c64d43c83c4a1b8431bf4efbfa32bdce811d089df3a2ff2160e3926f"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-homebrew-test.1/dbf_v0.0.0-homebrew-test.1_darwin_amd64.tar.gz"
      sha256 "1b6ab182d6fa4d6d4dcd2f35f29ae95383709c63f71219b5cc9df287685d1f3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-homebrew-test.1/dbf_v0.0.0-homebrew-test.1_linux_arm64.tar.gz"
      sha256 "0ff9e01f61ad35706345f900538fc3678b88784a755e3627a0650cbbe9496de9"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.0.0-homebrew-test.1/dbf_v0.0.0-homebrew-test.1_linux_amd64.tar.gz"
      sha256 "cd07de206cde39de581d464daba438763974b21d77fcc5067238ada86341f5cb"
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
