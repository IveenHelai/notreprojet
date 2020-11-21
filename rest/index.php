<?php 

include_once("Db.php");

switch ($_SERVER['REQUEST_METHOD']) {

    case 'GET':
        
        $_get = validate_request($_GET);
        $table = isset($_get['table']) ? $_get['table'] : NULL;
        if ($table == NULL) 
        {
            echo json_encode(false);
            break;
        }

        $rowid = isset($_get['rowid']) ? $_get['rowid'] : NULL;
        $where = isset($_get['where']) ? $_get['where'] : NULL;
        $order = isset($_get['orderby']) ? $_get['orderby'] : NULL;


        if($_GET['active'] === 'false')
        {

            $res = Db::select($table, $rowid, $where ,$order, false);
            echo json_encode($res);
            break;
        }
        else
        {
            $res = Db::select($table, $rowid, $where ,$order); 
            echo json_encode($res);
            break;
        }
        
        

        break;
    
    case 'POST':

        $_post = validate_request($_POST);

        $table = isset($_post['table']) ? $_post['table'] : NULL;
        $fields = isset($_post['fields']) ? $_post['fields'] : NULL;
        if($table == NULL)
        {
            echo json_encode(false);
            break;
        }
        $res = Db::insert($table, $fields);
        echo json_encode($res);
        
    break;
    
    case 'PUT' :

        $_put = array();
        parse_str(file_get_contents('php://input'), $_put);
        $_put= validate_request($_put);

        $table = isset($_put['table']) ? $_put['table'] : NULL;
        if($table == NULL)
        {
            echo json_encode(false);
            break;
        }
        $rowid = isset($_put['rowid']) ? $_put['rowid'] : NULL;
        if($rowid == NULL)
        {
            echo json_encode(false);
            break;
        }
        $fields = isset($_put['fields']) ? $_put['fields'] : NULL;

        if ($fields == NULL)
        {
            echo json_encode($_put);
            break;

        }
        $res = Db::update($table,$fields,$rowid);
        echo json_encode($res);
        break;
        
    case 'DELETE' : 

        $_del = array(); //tableau qui va contenir les données reçues
        parse_str(file_get_contents('php://input'), $_del);
        $_del = validate_request($_del);
        $table = isset($_del['table']) ? $_del['table'] : NULL;
        if($table == NULL)
        {
            echo json_encode(false);
            break;
        }
        $rowid = isset($_del['rowid']) ? $_del['rowid'] : NULL;
        if($rowid == NULL)
        {
            echo json_encode(false);
            break;
        }

        if($_del['soft'] === "false")
        {
            $res = Db::delete($table,$rowid,false);
            echo json_encode($res);
            break;
        }
        else
        {
            $res = Db::delete($table,$rowid);
            echo json_encode($res);
            break;
        }


        echo json_encode(false);
         break;

    default:
        # code...
        break;
}



function validate_request($request)
{
    foreach ($request as $k => $v) {

        if(!is_array($v))
        {
            $request[$k] = htmlspecialchars(strip_tags(stripslashes(trim($v))));
        }
        else 
        {
            validate_request($request[$k]);
        }

    }
    return $request;
}

?>