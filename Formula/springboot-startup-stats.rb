class SpringbootStartupStats < Formula
  desc "Extracts Statistics from Spring Boot start-up actuator"
  homepage "https://github.com/pdemartino/springboot-startup-stats"
  url "https://github.com/pdemartino/springboot-startup-stats/archive/refs/tags/v0.0.6.tar.gz"
  license "GPL-3.0-or-later"

  depends_on "openjdk@17"

  def install
    system "./gradlew", "-PinstallPrefix=#{prefix}", "installDist"
  end

  test do
    system "false"
  end
end
