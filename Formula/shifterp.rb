class Shifterp < Formula
  desc "ShiftERP operator CLI for tenants, SKUs, contracts, and billing"
  homepage "https://shifterp.com"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/shifterp/v0.3.0/shifterp_darwin_amd64"
      sha256 "c0d676a297c44d934623a6066f71adf92df865a1fe9f68aff0a4d8c8f4654dfd"
    end
    on_arm do
      url "https://shiftstack.ai/dl/shifterp/v0.3.0/shifterp_darwin_arm64"
      sha256 "d7c345c2af39100db7947144a52c73a4022165f9a38fb36f706cf3e153cd5a41"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/shifterp/v0.3.0/shifterp_linux_amd64"
      sha256 "8beee72987224dda38d33920dc1a2f2e4ded9e4d81160959e589a8282ae8464f"
    end
    on_arm do
      url "https://shiftstack.ai/dl/shifterp/v0.3.0/shifterp_linux_arm64"
      sha256 "74e227365bd547e34342015e00b94631b9002b204ebe3e21724200922b504811"
    end
  end

  def install
    bin.install Dir["shifterp_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "shifterp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shifterp version")
  end
end
