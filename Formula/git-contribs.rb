class GitContribs < Formula
  desc "A lightweight tool, written in GO, to display the contributors statistics of a Git project."
  homepage "https://github.com/ajardin/git-contribs"
  url "https://github.com/ajardin/git-contribs/archive/v0.2.0.tar.gz"
  sha256 "2a858145b3cbf2612847a464c33d24642580514ccd6e54c7449c356472fdb8bd"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    system "go", "get", "-u", "github.com/ajardin/git-contribs"
    cd "src/github.com/ajardin/git-contribs" do
      system "go", "build", "-o", "#{bin}/git-contribs"
      #prefix.install_metafiles
    end
  end

  test do
    system "true"
  end
end
