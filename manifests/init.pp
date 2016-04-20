class nullmailer (
  $package = $nullmailer::params::package,
  $absentpackages = $nullmailer::params::absentpackages,
  $service = $nullmailer::params::service,
  $manage_etc_mailname = $nullmailer::params::manage_etc_mailname,
  $mailname = $nullmailer::params::mailname,
  $adminaddr = "root@$::domain",
  $remoterelay = "smtp.$::domain",
  $remoteopts = '',
  $domain = $nullmailer::params::domain

) inherits nullmailer::params {

  anchor {'nullmailer::start':}->
  class {'nullmailer::package':}~>
  class {'nullmailer::config':}~>
  class {'nullmailer::service':}~>
  anchor {'nullmailer::end':}

}
