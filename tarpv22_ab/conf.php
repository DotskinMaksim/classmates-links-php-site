<?php
$kasutaja='d123173_maksdot';
$serverinimi='d123173.mysql.zonevs.eu';
$parool='Tark123456';
$andmebaas='d123173_tarpv22';
$yhendus=NEW mysqli($serverinimi,$kasutaja,$parool,$andmebaas);
$yhendus->set_charset('UTF8');
