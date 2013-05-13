# Public: Install RubyMine.app into /Applications.
#
# Examples
#
#   include rubymine
class rubymine {
  package { 'RubyMine':
    source   => 'http://download-ln.jetbrains.com/ruby/RubyMine-5.4.1.dmg',
    provider => 'appdmg'
  }
}