class Dbf < Formula
  desc "Configuration tool for Debian hosts"
  homepage "https://github.com/mofelee/debianform"
  version "0.2.0-alpha.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.2.0-alpha.2/dbf_v0.2.0-alpha.2_darwin_arm64.tar.gz"
      sha256 "1f5f9122b9dd2692a690a4e7ad60a1f25dfdc42ba88177d54bd5adbd640b3294"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.2.0-alpha.2/dbf_v0.2.0-alpha.2_darwin_amd64.tar.gz"
      sha256 "3260fb51f731758b69f585a5ec200eebda666d687959ee66f9ff1e53942d28de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mofelee/debianform/releases/download/v0.2.0-alpha.2/dbf_v0.2.0-alpha.2_linux_arm64.tar.gz"
      sha256 "a80897a84cb822a7d35eca333d2daab1badc7ede6bb0e37d1751dacd0dbea204"
    else
      url "https://github.com/mofelee/debianform/releases/download/v0.2.0-alpha.2/dbf_v0.2.0-alpha.2_linux_amd64.tar.gz"
      sha256 "3ba4bc9f6940ed65697f60b5e97c6a6bc462eb2466e8072ff9a8fbdeecabfba3"
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
