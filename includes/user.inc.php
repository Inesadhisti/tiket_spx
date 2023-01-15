<?php
class User{
	
	private $conn;
	private $table_name = "user";
	#ganti semua 213_pengguna jadi user
	
	public $id;
	public $nl;
	public $un;
	public $pw;
	public $tu;
	
	public function __construct($db){
		$this->conn = $db;
	}
	
	function insert(){
		
		$query = "insert into ".$this->table_name." values('',?,?,?,?)";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->nl);
		$stmt->bindParam(2, $this->un);
		$stmt->bindParam(3, $this->pw);
		$stmt->bindParam(4, $this->tu);
		
		if($stmt->execute()){
			return true;
		}else{
			return false;
		}
		
	}
	
	function readAll(){

		$query = "SELECT * FROM ".$this->table_name." ORDER BY no_user ASC";
		#ganti semua id_pengguna jadi no_user
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		
		return $stmt;
	}
	
	// used when filling up the update product form
	function readOne(){
		
		$query = "SELECT * FROM " . $this->table_name . " WHERE no_user=? LIMIT 0,1";

		$stmt = $this->conn->prepare( $query );
		$stmt->bindParam(1, $this->id);
		$stmt->execute();

		$row = $stmt->fetch(PDO::FETCH_ASSOC);
		
		$this->id = $row['no_user'];
		$this->nl = $row['nama_user'];
		#ganti semua nama_pengguna jadi nama_user
		$this->un = $row['username'];
		$this->pw = $row['password'];
	}
	
	// update the product
	function update(){

		$query = "UPDATE 
					" . $this->table_name . " 
				SET 
					nama_user = :nm, 
					username = :un, 
					password = :ps
				WHERE
					no_user = :id";

		$stmt = $this->conn->prepare($query);

		$stmt->bindParam(':nm', $this->nl);
		$stmt->bindParam(':un', $this->un);
		$stmt->bindParam(':ps', $this->pw);
		$stmt->bindParam(':id', $this->id);
		
		// execute the query
		if($stmt->execute()){
			return true;
		}else{
			return false;
		}
	}
	
	// delete the product
	function delete(){
	
		$query = "DELETE FROM " . $this->table_name . " WHERE no_user = ?";
		
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->id);

		if($result = $stmt->execute()){
			return true;
		}else{
			return false;
		}
	}
	function countAll(){

		$query = "SELECT * FROM ".$this->table_name." ORDER BY no_user ASC";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		
		return $stmt->rowCount();
	}
	function hapusell($ax){
	
		$query = "DELETE FROM " . $this->table_name . " WHERE no_user in $ax";
		
		$stmt = $this->conn->prepare($query);

		if($result = $stmt->execute()){
			return true;
		}else{
			return false;
		}
	}
}
?>
