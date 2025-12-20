cask "deploybar" do
  version "1.0.3"
  
  arch arm: "aarch64", intel: "7008ed2c9c1d9b3293799a8cfefec25215d79eaf293e72f86f3997b0d65ec793"
  
  url "https://raw.githubusercontent.com/waseemmaya/deploy-bar-updates/main/DeployBar_#{arch}.dmg"
  sha256 arm: "132c19b2e4c4b444125577aaeef7dfaa1661c160c1ad44f3fa0a093cf3d8f871"
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

