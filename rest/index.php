<?php 
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
        $where = 
        echo json_encode($_get);
    break;
    
    case 'POST':
        $_post = validate_request($_POST);

        echo json_encode($_post);
    break;
    
    case 'PUT' :
        $_put = array();
        parse_str(file_get_contents('php://input'), $_put);
        $_put= validate_request($_put);

        echo json_encode($_put);
    break;

    case 'DELETE' : 
        $_del = array(); //tableau qui va contenir les données reçues
        parse_str(file_get_contents('php://input'), $_del);
        $_del = validate_request($_del);
        echo json_encode($_del);
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