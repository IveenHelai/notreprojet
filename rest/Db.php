<?php 
class Db
{
    private static $db = null;
    // private static $dbp = "rst_";

    private static function connect()
    {
        if (self::$db === null) 
        {
            // Paramètres de configuration DB
            $dsn = "mysql:host=localhost;port=3306;dbname=notreprojet";
            $user = "root";
            $pass = "";
            // Création de la connexion
            try {
                self::$db = new PDO(
                    $dsn,
                    $user,
                    $pass,
                    array(
                        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                        PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
                        PDO::ATTR_PERSISTENT => true
                    )
                );
            } catch (PDOException $e) {
                var_dump($e);
            }
        }
        return self::$db;
    }

    public static function query($sql, $params = null)
    {
        try {
            $stmt = self::connect()->prepare($sql); // requête préparée
            $stmt->execute($params);
        } catch (PDOException $e) {
            return $e;
        }
        return $stmt;
    }

    public static function select($table, $id = null, $where = null, $orderby = " id ASC ")
    {
        $orderby = " ORDER BY ".$orderby;
        $params=[];
        $sql = " SELECT * FROM $table WHERE id";
        
        if($id>0)
        {
            $sql .= " = ?";
            $params[] = $id;
        }
        if($where == null)
        {
            $sql.= " AND active = ? ";
            $params[] = true;
        }
        $sql.= $orderby;

        $res = Db::query($sql, $params);

        return $res;
    }
    
    public static function insert()
    {
        
    }
    
    public static function update()
    {
        
    }
    
    public static function delete()
    {
        
    }
     
}
$res =  Db::select("product");
var_dump($res->fetchAll(5));
