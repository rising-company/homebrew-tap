class Safe < Formula
  desc "Resolve secrets from your Rising Safe instance and inject them into processes"
  homepage "https://github.com/rising-company/safe"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/rising-company/homebrew-tap/releases/download/v0.1.0/safe-darwin-arm64.tar.gz"
      sha256 "4d358dfbc9ef302aae551edd0940100beec583eb9187d13719bd3bcfe04c9fae"
    end
    on_intel do
      url "https://github.com/rising-company/homebrew-tap/releases/download/v0.1.0/safe-darwin-x64.tar.gz"
      sha256 "8d9908c06988530d794fe7016e334862b408229bcea831baf316215661ee8d52"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rising-company/homebrew-tap/releases/download/v0.1.0/safe-linux-x64.tar.gz"
      sha256 "564934ea68ad16f9c37449304390357e6e54b8212452e664d7293695c5064dd9"
    end
  end

  def install
    bin.install "safe"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/safe --help")
  end
end
