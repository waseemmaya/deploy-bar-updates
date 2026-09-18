cask "deploybar" do
  version "4.0.2"
  
  arch arm: "aarch64", intel: "6b0f3da557f1d36e2a353ead4877fc002b499fadb74649a5d54b97c9e6b3b4c4"
  
  url "https://raw.githubusercontent.com/waseemmaya/deploy-bar-updates/main/DeployBar_#{arch}.dmg"
  sha256 arm: "e6bcd6d0153a442203f6d19bfa677d35b3f5f61613b00e5cac953c97c3166f7f"
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

