<php?

class ClientsModel {
    private $db;

    public function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_miu;charset=utf8','root', '');
    }

    // ---- GET ALL

    function get()
}