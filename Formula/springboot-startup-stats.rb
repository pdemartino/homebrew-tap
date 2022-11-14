class SpringbootStartupStats < Formula
  desc "Extracts Statistics from Spring Boot start-up actuator"
  homepage "https://github.com/pdemartino/springboot-startup-stats"
  url "https://github.com/pdemartino/springboot-startup-stats/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "f89d473e9669dde70922626dd9bad7a1dbe9f6dac8e07bd4cb39967fdffafdba"
  license "GPL-3.0-or-later"

  depends_on "openjdk@17"

  def install
    system "./gradlew", "-PinstallPrefix=#{prefix}", "installDist"
  end

  test do
    system "false"
  end
end
