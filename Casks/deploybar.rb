cask "deploybar" do
  version "1.0.1"
  
  arch arm: "aarch64", intel: "x64"
  
  url "https://raw.githubusercontent.com/waseemmaya/deploy-bar-updates/main/DeployBar_#{arch}.dmg"
  sha256 arm: "2f54c1070b832cea6cab652fbaec50ccced8e4908bdad0240f7d0662005fdc92"
  name "DeployBar"
  desc "Monitor Vercel deployments and GitHub Actions in your menu bar"
  homepage "https://waseemmaya.github.io/deploy-bar-updates/"

  livecheck do
    url "https://raw.githubusercontent.com/waseemmaya/deploy-bar-updates/main/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  app "DeployBar.app"

  uninstall quit: "com.waseem.deploybar"

  zap trash: [
    "~/Library/Application Support/com.waseem.deploybar",
    "~/Library/Caches/com.waseem.deploybar",
    "~/Library/Preferences/com.waseem.deploybar.plist",
    "~/Library/Saved Application State/com.waseem.deploybar.savedState",
  ]
end

