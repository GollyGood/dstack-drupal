<?php
$aliases['local'] = array(
  'uri' => 'example.local',
  'root' => '/home/vagrant/docroot',
  'remote-host' => 'example.local',
  'path-aliases' => array(
    '%drush-script' => '/usr/bin/drush',
    '%dump-dir' => '/tmp',
  ),
  'remote-user' => 'vagrant',
);
