class Shifterp < Formula
  desc "ShiftERP operator CLI — tenants, accounts, and support feedback"
  homepage "https://shifterp.com"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/shifterp/v0.2.0/shifterp_darwin_amd64"
      sha256 "eea8e5d06c5723c5aedbb623ead0ab816b353ac28e8c7cc97e24340572aba865"
    end
    on_arm do
      url "https://shiftstack.ai/dl/shifterp/v0.2.0/shifterp_darwin_arm64"
      sha256 "6062f679b007ddc79e472431ff15fa61f6e1103f30c18f7ca98c9e1e56bafa51"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/shifterp/v0.2.0/shifterp_linux_amd64"
      sha256 "3b7d0dbede012796246e58661f8a2b9f0c4f26b0762b8deae5f53aca471982e2"
    end
    on_arm do
      url "https://shiftstack.ai/dl/shifterp/v0.2.0/shifterp_linux_arm64"
      sha256 "1644502a75daad3316a2b10d1a447a85d4e1ef39a1b015b3ad2969e3802fee4f"
    end
  end

  def install
    bin.install Dir["shifterp_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "shifterp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shifterp version")
  end
end
