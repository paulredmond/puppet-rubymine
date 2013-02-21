# Public: Install RubyMine.app into /Applications.
#
# Examples
#
#   include rubymine
class rubymine {

  require git::config

  package { 'RubyMine':
    source   => 'http://download.jetbrains.com/ruby/RubyMine-5.0.1.dmg',
    provider => 'appdmg'
  }

  $gitignore = "${git::config::configdir}/gitignore"

  exec { "echo .idea >> ${gitignore}":
    require      => File["${gitignore}"],
    subscribe    => File["${gitignore}"],
    refreshonly  => true,
    onlyif       => "grep -c \.idea ${gitignore}",
  }
}