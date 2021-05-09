<?php
 
class DB {

    public $_db;
	private static $_instance;
   private function __construct()
   {
    $host        = "host = 127.0.0.1";
	$port        = "port = 5432";
	$dbname      = "dbname = mcq";
	$credentials = "user = postgres password=postgres";
    $this->_db = pg_connect("$host $port $dbname $credentials");
    if(!$this->_db) {
      echo "Error : Unable to open database\n";
   } else {
     //echo "Connected successfully\n";
   }
  }
  Private function clone () {} 
  public static function getInstance()
  {
    if(! (self::$_instance instanceof self) ) {
      self::$_instance = new self();
    }
    return self::$_instance;
  }

	public function query($sql) {
		$ret = pg_query($this->_db, $sql);
		//$rows = pg_num_rows($ret);
		return $ret;
	}

	public function numrows($ret) {
		$rows = pg_num_rows($ret);
		return $rows;
	}

	public function assoc($ret) {
		$detail = pg_fetch_assoc($ret);
		return $detail;
	}
	public function prepare($ret){
		$detail= pg_prepare($ret);
		return $detail;
	}

	public function moveupload($tempname, $folder) {
		$ret=move_uploaded_file($tempname, $folder);
		return $ret;
	}

	public function getcategory($result) {
		// $ret=$this->_db->query($result);
		// $row=$this->_db->assoc($ret);
		$query= "SELECT * FROM category";
        $getQuery = $this->_db->query($query);
        //$getData = pg_fetch_array($ret);
        //echo "<pre>";print_r($getData); die;
        $responseArray = array();
        while($data =$this->_db->assoc($getQuery)){
          //echo "<pre>"; print_r($data); 
			$responseArray[] = $data;
		}
		return $responseArray;

	}

	// public function userprofile() {

	// $query=	"SELECT *
	// 	FROM userprofile
	// 	WHERE firstname='$firstname'
	// 	";
	// 	$result=pg_query($this->db, $query);
	// 	return $result;

	// }
}
	
 ?>
