cask "cmd-hanyoung" do
  version "0.1.0"
  sha256 "e2bf7a15dc2b8ae506db1e7ddb5331c53eaacf71721930ce74e52ca1956afc32"

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
