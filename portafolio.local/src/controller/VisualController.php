<?php

require_once "ProjectController.php";

class VisualController {
    
    public function getVProjects() {
        $pc = new ProjectController();
        $pcProjects = $pc->getProjects();

        $projects = [];

        foreach ($pcProjects as $project){
            $projects[] = [
                "id" => $project->id,
                "name" => $project->name,
                "description" => $project->description,
                "link_img" => $project->image_path
            ];
        }
        return $projects;
    }
    public function getVUser() {
        $pc = new ProjectController();
        $pcUsers = $pc->getUser();

        foreach ($pcUsers as $data){
            $user = [
            "id" => $data->id,
            "name" => $data->name,
            "last_name" => $data->last_name,
            "city" => $data->city,
            "date_birth"=> $data->date_birth];
        }

        return $user;
    }
    public function getVNav() {
        $pc = new ProjectController();
        $pcNav = $pc->getNav();

        $nav = [];

        foreach ($pcNav as $item){
            $nav[] = [
                "id" =>$item->id,
                "label" => $item->label,
                "link" => $item->link
            ];
        }
        return $nav;
    }

}