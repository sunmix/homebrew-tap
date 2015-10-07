cask :v1 => 'carthage' do
  version '0.9.3'
  sha256 '5ee449298efeaa9c737b949159521996de864df2c6188fbaf4c17e297eb76007'

  url "https://github.com/Carthage/Carthage/releases/download/#{version}/Carthage.pkg"
  name 'Carthage'
  homepage 'https://github.com/Carthage/Carthage'
  license :mit

  pkg "Carthage.pkg"
  uninstall :pkgutil => 'org.carthage.carthage'
end
