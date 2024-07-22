cask "jmstoolbox" do
  # renovate: datasource=github-releases depName=jmstoolbox/jmstoolbox
  version "6.5.0"
  sha256 :no_check

  url "https://github.com/jmstoolbox/jmstoolbox/releases/download/v#{version}/jmstoolbox-#{version}-macosx.cocoa.aarch64.tar.gz"
  name "JMSToolBox"
  desc "Free universal JMS client"
  homepage "https://github.com/jmstoolbox/jmstoolbox"

  app "JMSToolBox.app"

  postflight do
    system("xattr -cr \"/Applications/JMSToolBox.app\"")
  end

  zap trash: "~/.jtb"
end
