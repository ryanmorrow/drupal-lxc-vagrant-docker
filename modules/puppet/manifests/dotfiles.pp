# class puppet::dotfiles
#
# copies dotfiles to vm
#
class puppet::dotfiles (
    $match    = '\.[a-zA-Z0-9]*',
    $source   = '/vagrant/files/dot/',
    $target   = '/home/vagrant/'
) {

  exec { 'dotfiles':
    command => "cp -r ${source}/${match} ${target}",
    onlyif  => "test -d ${source}",
  }

}
