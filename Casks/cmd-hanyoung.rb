cask "cmd-hanyoung" do
  version "0.1.1"
  sha256 "c2a16e752ed9b7c717b2b726a5a3f8c4db9f8d7c3d0e056f2f7d56d0e8cb9acc"

  url "https://github.com/temeraire97/cmd-hanyoung/releases/download/v#{version}/cmd-hanyoung-#{version}.zip"
  name "cmd-hanyoung"
  desc "Tap left Command for English, right Command for Korean input switching"
  homepage "https://github.com/temeraire97/cmd-hanyoung"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "cmd-hanyoung.app"

  zap trash: "~/Library/Preferences/com.cmdhanyoung.app.plist"

  caveats <<~EOS
    cmd-hanyoung needs Accessibility permission:
      System Settings ▸ Privacy & Security ▸ Accessibility → enable cmd-hanyoung.

    This app is not notarized. If macOS blocks first launch, clear quarantine:
      xattr -dr com.apple.quarantine "#{appdir}/cmd-hanyoung.app"
    or use System Settings ▸ Privacy & Security ▸ "Open Anyway".
  EOS
end
