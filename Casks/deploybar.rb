cask "deploybar" do
  version "4.1.1"
  
  arch arm: "aarch64", intel: "7f532a3535a34440158ce1dac45136d099c57ea888878df81b9816add543e7d5"
  
  url "https://raw.githubusercontent.com/waseemmaya/deploy-bar-updates/main/DeployBar_#{arch}.dmg"
  sha256 arm: "e7be865a44af14e608373613d4dfbba6876180801b4556fa310c88eec4785261"
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

