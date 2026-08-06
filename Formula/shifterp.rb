class Shifterp < Formula
  desc "ShiftERP operator CLI — tenants, accounts, and support feedback"
  homepage "https://shifterp.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/shifterp/v0.1.0/shifterp_darwin_amd64"
      sha256 "0b19e0a8c99193ee08e4ae06824bf2b9ea985a9331fef57c63ef3225db45cb66"
    end
    on_arm do
      url "https://shiftstack.ai/dl/shifterp/v0.1.0/shifterp_darwin_arm64"
      sha256 "eec8e402e864040aa40b20bc1827a595c0e584ab1d21e0485f6422c6105457c5"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/shifterp/v0.1.0/shifterp_linux_amd64"
      sha256 "58b13e5574d8a11492270a4174143bdaecb51f755d2f5f12ba45ac89d4c23bc6"
    end
    on_arm do
      url "https://shiftstack.ai/dl/shifterp/v0.1.0/shifterp_linux_arm64"
      sha256 "82f00164603d0970f2b6419449e803a9cbb499dc227a709b00fcba6e5ce9ba76"
    end
  end

  def install
    bin.install Dir["shifterp_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "shifterp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shifterp version")
  end
end
