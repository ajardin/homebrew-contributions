class Origami < Formula
  desc "A PHP toolbox to manage local Docker environments."
  homepage "https://github.com/ajardin/origami"
  url "https://github.com/ajardin/origami/releases/download/v0.1.0/origami.phar"
  sha256 "adc6a23f1eec38247ba6ee426167feb9802d216987305d806deaeaf0a272abc4"

  def install
    mv "origami.phar", "origami"
    bin.install "origami"
  end

  test do
    system "true"
  end
end
