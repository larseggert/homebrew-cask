cask 'webstorm' do
  version '2017.1'
  sha256 'bab8eb85036315d8737cc16749f159ffbc2fdc4ce358ae1659735e3776693b27'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release',
          checkpoint: 'ca44e04047a7d441042eff86741c7d94b213954c0e8347b767dbbadd249779e5'
  name 'WebStorm'
  homepage 'https://www.jetbrains.com/webstorm/'

  auto_updates true
  conflicts_with cask: 'webstorm-eap'

  app 'WebStorm.app'

  uninstall delete: '/usr/local/bin/wstorm'

  zap delete: [
                "~/Library/Application Support/WebStorm#{version.major_minor}",
                "~/Library/Caches/WebStorm#{version.major_minor}",
                "~/Library/Logs/WebStorm#{version.major_minor}",
                "~/Library/Preferences/WebStorm#{version.major_minor}",
                '~/Library/Preferences/jetbrains.webstorm.aaac0500.plist',
                '~/Library/Saved Application State/com.jetbrains.WebStorm.savedState',
              ]
end
