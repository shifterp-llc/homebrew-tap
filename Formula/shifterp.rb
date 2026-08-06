# Placeholder formula — replaced by `make release VERSION=vX.Y.Z` in shifterp-cli
# after binaries are uploaded to https://shiftstack.ai/dl/shifterp/...
class Shifterp < Formula
  desc "ShiftERP operator CLI — tenants, accounts, and support feedback"
  homepage "https://shifterp.com"
  version "0.0.0"
  license "MIT"
  url "https://shiftstack.ai/dl/shifterp/v0.0.0/shifterp_darwin_arm64"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  def install
    odie "No release published yet. From shifterp-cli run: make release VERSION=v0.1.0"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shifterp version")
  end
end
