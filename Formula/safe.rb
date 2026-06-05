class Safe < Formula
  desc "Resolve secrets from your Rising Safe instance and inject them into processes"
  homepage "https://github.com/rising-company/safe"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/rising-company/homebrew-tap/releases/download/v0.2.0/safe-darwin-arm64.tar.gz"
      sha256 "cea2e86e728e49a6e50b14317d9adb22f0d9160c2bd307e319170fad98d40a9d"
    end
    on_intel do
      url "https://github.com/rising-company/homebrew-tap/releases/download/v0.2.0/safe-darwin-x64.tar.gz"
      sha256 "ce929c2f1bbbed14d631b0db9db2d7a7b3331f878bc823b62babd821beda0b7f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rising-company/homebrew-tap/releases/download/v0.2.0/safe-linux-x64.tar.gz"
      sha256 "9b52710e87a890b7c822823bb9472b4cde419adf918d67973b32bca7e70b2c9c"
    end
  end

  def install
    bin.install "safe"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/safe --help")
  end
end
