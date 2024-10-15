<?php
//Fernando Diaz

require_once "../vendor/autoload.php";
require_once "../src/controller/ProjectController.php";
require_once "../src/controller/VisualController.php";

// prepare twig
$loader = new \Twig\Loader\FilesystemLoader('templates');
$twig = new \Twig\Environment($loader, [
	'cache' => false,
]);
//$twig = new \Twig\Environment($loader, [
//	'cache' => 'cache',
//]);
  
//$pc = new ProjectController();
//print_r("<pre>");
//print_r($pc->getUser());
//print_r("</pre>");

$vc = new VisualController();

//print_r("<pre>");
//print_r($vc->getVProjects());
//print_r("</pre>");

//print_r("<pre>");
//print_r($vc->getVista());
//print_r("</pre>");

//print_r("<pre>");
//print_r($vc->getVUser());
//print_r("</pre>");

//print_r("<pre>");
//print_r($vc->getVNav());
//print_r("</pre>");

// Este array lo tiene que devolver el controlador
//echo $twig->render('index.html', [ ]);
echo $twig->render('index.html', [ "projectos" => $vc->getVProjects(), "user" => $vc->getVUser(), "nav"=> $vc -> getVNav() ]);

?>
