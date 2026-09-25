class Safe < Formula
  desc "Resolve secrets from your Rising Safe instance and inject them into processes"
  homepage "https://github.com/rising-company/safe"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/rising-company/homebrew-tap/releases/download/v0.3.0/safe-darwin-arm64.tar.gz"
      sha256 "d070389241ac82a8f6ceb498bf96fd82976a179a4e2442c6388725d577700148"
    end
    on_intel do
      url "https://github.com/rising-company/homebrew-tap/releases/download/v0.3.0/safe-darwin-x64.tar.gz"
      sha256 "3b9d904cd79ae358a4fd30b9ca298a8a08080f6744ebaffbee26ff389d708236"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rising-company/homebrew-tap/releases/download/v0.3.0/safe-linux-x64.tar.gz"
      sha256 "72523191a858ee1780d16450c323d103fe240ade5f787afc24fb1ddbb5af6579"
    end
  end

  def install
    bin.install "safe"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/safe --help")
  end
end
