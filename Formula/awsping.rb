class Awsping < Formula
  desc "Console tool to check the latency to each Amazon EC2 region"
  homepage "https://github.com/ekalinin/awsping/blob/master/README.md"
  url "https://github.com/ekalinin/awsping/archive/refs/tags/1.0.0.tar.gz"
  sha256 "687dfec42f085e7b88158ebb7b1414afb416f65f7fd6ef66213a074b906c81b7"
  license "MIT"

  depends_on "go@1.17" => :build

  def install
    system "go", "build", "-o", "#{bin}/awsping"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/awsping -v")
  end
end
