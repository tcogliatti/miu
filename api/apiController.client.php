<?php
require_once 'model/clients.model.php';

class ApiClientController
{
    private $model;
    private $view;
    
    function __construct()
    {
        $this->model = new ClientsModel();
        $this->view = new ApiView();
    }

    // ------------- INSERT

    private function getBody()
    {
    $data = file_get_contents("php://input");
    return json_decode($data);
    }

    function add($params = null)
    {
        $data = $this->getBody();

        $mensaje = $data->mensaje;
        $fecha = $data->fecha;
        $puntaje = $data->puntaje;
        $id_prod = $data->id_prod_fk;
        //hay que ver como tomar el id del usuario
        $id_user = $data->id_user_fk;

        $id = $this->model->insert($mensaje, $fecha, $puntaje, $id_user, $id_prod);

        $coment = $this->model->getOne($id);

        if ($coment) {
            $this->view->response($coment, 200);
        } else {
            $this->view->response("El Usuario no fue creado", 500);
        }
    }
    
}
