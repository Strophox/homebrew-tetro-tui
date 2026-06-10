class TetroTui < Formula
  desc "Terminal-based tetromino-stacking game that is customizable and cross-platform"
  homepage "https://github.com/Strophox/tetro-tui"
  url "https://github.com/Strophox/tetro-tui/archive/refs/tags/v3.6.1.tar.gz"
  sha256 "3b08e3087ef24fb79bad373408b67e6391093e3aea368698d9b994aeb7c491ff"
  license "MIT"
  head "https://github.com/Strophox/tetro-tui.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "tetro-tui #{version}", shell_output("#{bin}/tetro-tui --version").strip
  end
end
