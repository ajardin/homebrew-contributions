class Origami < Formula
  desc "A PHP toolbox to manage local Docker environments."
  homepage "https://github.com/ajardin/origami"
  url "https://github.com/ajardin/origami/releases/download/v0.2.0/origami.phar"
  sha256 "415f503b03c65ec59fda697d562817c0c45f6184a42437257c52d6e2a8c58f93"

  def install
    mv "origami.phar", "origami"
    bin.install "origami"
  end

  test do
    system "true"
  end
end
