# Public: Install RubyMine.app into /Applications.
#
# Examples
#
#   include rubymine
class rubymine {

  package { 'RubyMine':
    source   => 'http://download.jetbrains.com/ruby/RubyMine-5.0.1.dmg',
    provider => 'appdmg'
  }
}