class Gcm < Formula
  desc "Quickly checkout the base branch (main/master) of any git repo"
  homepage "https://hulla.dev/projects/gcm"
  url "https://github.com/samuelhulla/gcm/archive/refs/tags/v0.0.0.tar.gz"
  sha256 "ecfb7092c96dc76d3cd6f34b5b50ca34cbd5dc02cfc5fde87412ed444b061143"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "not a git repository", shell_output("#{bin}/gcm 2>&1", 1)
  end
end
