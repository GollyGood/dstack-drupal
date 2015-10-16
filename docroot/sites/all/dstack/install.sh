#!/usr/bin/env  php
<?php

include(__DIR__ . '/dstackAdapter.class.inc');
$dstackAdapter = get_dstack_adapter($argv[1]);

// Get Drush parameters from the global vagrant config
$full_domain = $dstackAdapter->config->{'default-web'}->{'full-domain'};
$databases = $dstackAdapter->config->{'default-web'}->databases;
$db_user = 'root';
$db_password = $dstackAdapter->config->mysql->server_root_password;

// Change working directory to local docroot so drush can detect
$drupal_docroot = $dstackAdapter->config->{'default-web'}->sites->{'example.local'}->guest_docroot;
if (chdir($drupal_docroot)) {
  $dstackAdapter->execute("php -d sendmail_path=/bin/true /usr/local/bin/drush.php -l example.local si minimal --db-url='mysqli://{$db_user}:{$db_password}@localhost/{$databases[0]}'  --sites-subdir='example.local' --site-name='dStack Drupal7 Example' -y");
}
