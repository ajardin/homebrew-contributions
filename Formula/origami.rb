class Origami < Formula
  desc "A PHP toolbox to manage local Docker environments."
  homepage "https://github.com/ajardin/origami"
  url "https://github.com/ajardin/origami/releases/download/v0.2.2/origami.phar"
  sha256 "414e4e6e49bdc24b45395b785d364ef114791f861d1b2c4eebe27ca01e2a9a6f"

  def install
    mv "origami.phar", "origami"
    bin.install "origami"
  end

  test do
    system "true"
  end
end
