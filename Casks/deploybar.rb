cask "deploybar" do
  version "1.0.4"
  
  arch arm: "aarch64", intel: "4bf5064acf3cdec50d045a4d2665cfe0212e117ef3ad45ca841b58c4d97849f9"
  
  url "https://raw.githubusercontent.com/waseemmaya/deploy-bar-updates/main/DeployBar_#{arch}.dmg"
  sha256 arm: "4e13df41e077a3ed5d4f2305254158a5e1a652dfb2e02c240a51214153f4d3a5"
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

