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
            return [$e,$stmt->debugDumpParams()];
        }
        return $stmt;
    }

    public static function select($table, $id = null, $where = null, $order, $active = true)
    {
        
        
        $params=[];
        $sql = " SELECT * FROM $table WHERE id";
        
        if($id>0)
        {
            $sql .= " = ?";
            $params[] = $id;
        }

        if($active === true)
        {
            $sql.= " AND active = ? ";
            $params[] = true;
        }

        if($where != NULL && is_array($where)) 
        {
            foreach ($where as $key => $value) 
            {
                $sql.= " AND $key $value ";
            }
        }

        if($order === NULL)
        {
            $orderby = " ORDER BY id ASC";
        }
        else
        {
            $orderby = " ORDER BY ".$order;
        }

        $sql.= $orderby;

        $res = Db::query($sql, $params);

        return $res->fetchAll(5);

    }
    
    public static function insert($table, $fields = NULL)
    {
        
        $sql = "INSERT INTO $table";
        if(!is_array($fields))
        {
            $sql.= "(id) VALUES(NULL);";
            self::query($sql);
            return self::$db->lastInsertId();
        }
        elseif(is_array($fields))
        {
            $fields_part = "(";
            $values_part="(";
            $params=[];
            foreach ($fields as $key => $value) 
            {
            
                $fields_part.= "$key ,";
                $values_part.= "? ,";
                if(is_bool($value) === true)
                {
                    $value === true ? $value = 1 : $value = 0;
                };
                $params[] = $value;

            }
            $fields_part = trim($fields_part,',');
            $values_part = trim($values_part, ',');
            $fields_part .= ")";
            $values_part .= ");";
            $sql.= $fields_part. " VALUES ".$values_part;
        }
        
        $ret = self::query($sql,$params);
        return (int) self::$db->lastInsertId();
    }
    
    public static function update($table, $fields, $rowid)
    {
        $sql = " UPDATE $table SET ";
        $params= [];
        
        foreach ($fields as $key => $value) 
        {
            $sql.= " $key = ? ,";
            $params[] = $value;
        }
        $sql = trim($sql, ',');
        $sql.= " WHERE id = ?";
        $params[] = $rowid;
        $res = self::query($sql, $params);
        return $res->rowCount();

    }
    
    public static function delete($table, $rowid, $soft_delete = true)
    {
        if($soft_delete === true)
        {
            $sql="UPDATE $table SET active = false WHERE id = ?";
            $params = [$rowid];
            return self::query($sql,$params)->rowCount();
        }
        elseif($soft_delete === false)
        {
            $sql = "DELETE FROM $table WHERE id = ?";
            $params = [$rowid];
            return self::query($sql, $params)->rowCount();
        }
        

    }
     
}
// $res =  Db::select("product",3);
// var_dump($res->fetchAll(5));
