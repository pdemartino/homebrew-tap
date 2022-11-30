class SpringbootStartupStats < Formula
  desc "Extracts Statistics from Spring Boot start-up actuator"
  homepage "https://github.com/pdemartino/springboot-startup-stats"
  url "https://github.com/pdemartino/springboot-startup-stats/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "3329fc24f497662defe648b60d216d3a8f097fbd0794b0ebd2306849c7190b27"
  license "GPL-3.0-or-later"

  depends_on "openjdk@17"

  def install
    system "./gradlew", "-PinstallPrefix=#{prefix}", "installDist"
    rm "#{prefix}/bin/springboot-startup-stats.bat"
  end

  test do
    system "false"
  end
end
