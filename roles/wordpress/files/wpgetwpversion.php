<?php
/*
 * Script de vérification de la version de wp
 * 

 * auteur : fm
 * date   : 12/08/2015
 *
 */
//echo $argv[1];
if(isset($argv[1])){
    $target=$argv[1];
}else{
    $target="/var/www/site/wordpress2";
}

global $wp_version;

require_once("$target/wp-blog-header.php");
require_once("$target/wp-includes/registration.php");
require_once("$target/wp-admin/includes/update.php");
require_once("$target/wp-admin/includes/taxonomy.php"); 

$currentversion=get_bloginfo('version');
//echo $wp_version."\n";
//wp_version_check();

$opt=array();
$v=get_core_updates($opt);
//print_r($v);
$stderr = fopen( 'php://stderr', 'w' );


if($v[0]->response=="upgrade"){
  echo "Upgrade from $currentversion to ".$v[0]->current."\n";
  fwrite($stderr, "upgrade" );
}else{
  echo "A jour\n";
}
fclose($stderr);
