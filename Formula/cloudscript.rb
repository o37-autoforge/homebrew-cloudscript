class Cloudscript < Formula
    desc "Cloudscript CLI installable with brew"
    homepage "https://github.com/Panchangam18/test-cloudscript-brew"
    version "0.1.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/Panchangam18/test-cloudscript-brew/releases/download/v0.1.0/cloud-cli-darwin-arm64.tar.gz"
        sha256 "66f23d4fdbc383e13729534843303abb6c0d476423cf08f339a09d90186069f1"
      else
        url "https://github.com/Panchangam18/test-cloudscript-brew/releases/download/v0.1.0/cloud-cli-darwin-amd64.tar.gz"
        sha256 "612e50444c2e9c272bcc024b19a0d2b36ae590a6f536044ee5fc2164d51d7ea6"
      end
    end
  
    on_linux do
      url "https://github.com/Panchangam18/test-cloudscript-brew/releases/download/v0.1.0/cloud-cli-linux-amd64.tar.gz"
      sha256 "1d79eecae458ad3747c596cbf9182c4e84b2a1132c0d890ace5cac095a81ee18"
    end
  
    def install
      bin.install "cloud-cli" => "cloud"
    end
  
    test do
      system "#{bin}/cloud", "--version"
    end
  end