<?php

class ClientsModel {
    private $db;

    public function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_miu;charset=utf8','root', '');
    }

    //////////////////////

    function getAll($inicio, $items)
    {
        $query = $this->db->prepare(
            'SELECT a.id, b.user, a.name, a.cuit_dni, a.datos_pago, a.contact, a.comment, a.date
            FROM clientes AS a 
            INNER JOIN users AS b 
                ON a.user_fk = b.id
            AND
                ON a.cancel = null
            ORDER BY a.name ASC 
            LIMIT ' .$inicio. ', ' .$items  // paginado
        );
        $query->execute();
        return $result = $query->fetchAll(PDO::FETCH_OBJ);
    }

    function getOne($param)
    {

    }

    function filter($param)
    {

    }

    function add($param)
    {
            $query = $this->db->prepare(
                'INSERT INTO clientes (user_fk, `name`, cuit_dni, datos_pago, mayo, contact, `comment`, `date`, cancel'
                );
            $query->execute([1,
                            $param->name, 
                            $param->cuit_dni, 
                            $param->datos_pago,
                            $param->mayo,
                            $param->contact,
                            $param->comment,
                            null,
                            0]);
                            
        return $this->db->lastInsertId();
    }
    function del($param)
    {

    }

    function update($param)
    {

    }

}