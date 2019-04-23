class Contributions < Formula
  desc ""
  homepage "https://github.com/ajardin/contributions"
  url "https://github.com/ajardin/contributions/archive/v0.1.0.tar.gz"
  sha256 "32f9ccea7cbc4e6ecf0bd58cbab5d4081c9e3624ffc7b592ef4d2134fbc9dac0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    system "go", "get", "-u", "github.com/ajardin/contributions"
    cd "src/github.com/ajardin/contributions" do
      system "go", "build", "-o", "#{bin}/contributions"
      #prefix.install_metafiles
    end
  end

  test do
    system "true"
  end
end
