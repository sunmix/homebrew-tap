class Trash < Formula
  desc "Small command-line program that asks Finder to move files or folders to the trash"
  homepage "https://github.com/sunmix/trash"
  url "https://github.com/sunmix/trash/archive/v0.1.0.tar.gz"
  sha256 "486af79999f62a8bb6d35a47cfbb08675801dc4026a4009a34c630f11cab4432"

  conflicts_with "osxutils", :because => "both install a trash binary"

  depends_on :xcode => :build
  depends_on :macos => :el_capitan

  def install
    xcodebuild "-target", "trash", "-configuration", "Release", "SYMROOT=symroot", "OBJROOT=objroot"
    bin.install "symroot/Release/trash"
  end
end
