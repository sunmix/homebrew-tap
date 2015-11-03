cask :v1 => 'carthage' do
  version '0.9.4'
  sha256 'fe57085ece2396d4930acda9c8156d7f6bc50347daa526d1bfca29cdeb54d2a2'

  url "https://github.com/Carthage/Carthage/releases/download/#{version}/Carthage.pkg"
  name 'Carthage'
  homepage 'https://github.com/Carthage/Carthage'
  license :mit

  pkg "Carthage.pkg"
  uninstall :pkgutil => 'org.carthage.carthage'
end
