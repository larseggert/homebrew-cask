cask 'zipeg' do
  version :latest
  sha256 :no_check

  url 'https://www.zipeg.com/downloads/zipeg_mac.dmg'
  name 'Zipeg'
  homepage 'https://www.zipeg.net/'
  license :gratis

  app 'Zipeg.app'
end
