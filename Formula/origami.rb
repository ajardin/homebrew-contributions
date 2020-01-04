class Origami < Formula
  desc "A PHP toolbox to manage local Docker environments."
  homepage "https://github.com/ajardin/origami"
  url "https://github.com/ajardin/origami/releases/download/v0.3.0/origami.phar"
  sha256 "c0bcada9dc4379dba57d720731d03d873b9a847d105a3b0aced1bce084a8579f"

  def install
    mv "origami.phar", "origami"
    bin.install "origami"
  end

  test do
    system "true"
  end
end
