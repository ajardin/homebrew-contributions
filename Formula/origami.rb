class Origami < Formula
  desc "A PHP toolbox to manage local Docker environments."
  homepage "https://github.com/ajardin/origami"
  url "https://github.com/ajardin/origami/releases/download/v0.2.1/origami.phar"
  sha256 "c1e91d8e03e81eb8caf394e42d4995e883e66b5a76179073984df8354989f52c"

  def install
    mv "origami.phar", "origami"
    bin.install "origami"
  end

  test do
    system "true"
  end
end
