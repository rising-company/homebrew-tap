class Safe < Formula
  desc "Resolve secrets from your Rising Safe instance and inject them into processes"
  homepage "https://github.com/rising-company/safe"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/rising-company/safe/releases/download/v0.1.0/safe-darwin-arm64.tar.gz"
      sha256 "9c9f74894d5c2083b9dd57785d4c62f8b44ade0f41929beba79acfe2338e1cca"
    end
    on_intel do
      url "https://github.com/rising-company/safe/releases/download/v0.1.0/safe-darwin-x64.tar.gz"
      sha256 "71a2b8c664b67557536063b6a3d3abee03a9f5d43b00c3dc8951356c26581ced"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rising-company/safe/releases/download/v0.1.0/safe-linux-x64.tar.gz"
      sha256 "587219eaf6a3060dc8275cf6189490c46a53efba77f2b82b4fedf07d086cc72f"
    end
  end

  def install
    bin.install "safe"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/safe --help")
  end
end
