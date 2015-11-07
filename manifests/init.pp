define android_studio($user = $title) {
  case $operatingsystem {
    "Ubuntu": {
      $deploy_dir = "/home/${user}/tools/android-studio"
      exec { "install_android_studio":
        command => "umake android ${deploy_dir} --accept-license",
        path    => [ 
          "/bin",
          "/usr/bin",
        ],
        creates => $deploy_dir,
        user    => $user,
      }
    }
    default: { 
      notify { "only ubuntu supported by ${module_name} for now": }
    }
  }
}
