class Cloudscript < Formula
    desc "Infrastructure as Code CLI tool that converts to terraform, ansible, and kubernetes"
    homepage "https://github.com/Panchangam18/test-cloudscript-brew"
    version "0.0.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/Panchangam18/test-cloudscript-brew/releases/download/v0.0.5/cloud-cli-darwin-arm64.tar.gz"
        sha256 "e8510d3654ba57c4c4dd011cbd19661bcaf3bd4f224d51838341a0e8d314948b"
      else
        url "https://github.com/Panchangam18/test-cloudscript-brew/releases/download/v0.0.5/cloud-cli-darwin-amd64.tar.gz"
        sha256 "e8510d3654ba57c4c4dd011cbd19661bcaf3bd4f224d51838341a0e8d314948b"
      end
    end
  
    on_linux do
      url "https://github.com/Panchangam18/test-cloudscript-brew/releases/download/v0.0.5/cloud-cli-linux-amd64.tar.gz"
      sha256 "f707d6179fcba3b6b063f3b9f080279056f242d10c6d409e4b9c0e03e620387f"
    end
  
    def install
      bin.install "cloud-cli" => "cloud"
    end
  
    test do
      system "#{bin}/cloud", "--version"
    end
  end