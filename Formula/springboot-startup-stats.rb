class SpringbootStartupStats < Formula
  desc "Extracts Statistics from Spring Boot start-up actuator"
  homepage "https://github.com/pdemartino/springboot-startup-stats"
  url "https://github.com/pdemartino/springboot-startup-stats/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "7c990e99f6f0bb1f3d6c83deab5fb507a8811231af1d824a545e69a53653b990"
  license "GPL-3.0-or-later"

  depends_on "openjdk@17"

  def install
    system "./gradlew", "-PinstallPrefix=#{prefix}", "installDist"
  end

  test do
    system "false"
  end
end
