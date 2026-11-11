# == Class: prosody::service
#
class prosody::service (
  Optional[Boolean] $hasstatus = undef,
  Optional[String]  $restart   = undef,
) {
  if pick($prosody::manage_service, $prosody::daemonize, false) {
    service { 'prosody':
      ensure    => running,
      enable    => true,
      hasstatus => $hasstatus,
      restart   => $restart,
    }
  }
}
