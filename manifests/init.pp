# android_studio
# ==============
# Install android studio using umake (ubuntu make).  Only supports Ubuntu at
# the moment (eg forever...)
#
# Parameters
# ==========
# [*user*]
#   user to install android studio for.  defaults to $title
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
      fail("only ubuntu supported by ${module_name} for now")
    }
  }
}
