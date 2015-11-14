user { "test": 
  ensure  => present,
  homedir => "/home/test",
}
file { "/home/test":
  ensure => directory,
  owner  => "test",
  group  => "test",
  mode   => "0755",
}
android_studio { "test": }
