class Xleak < Formula
  desc "Terminal Excel viewer with interactive TUI, search, formulas, and export"
  homepage "https://github.com/greenwbm/xleak"
  url "https://github.com/greenwbm/xleak/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  head "https://github.com/greenwbm/xleak.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "xleak", shell_output("#{bin}/xleak --version")
  end
end
