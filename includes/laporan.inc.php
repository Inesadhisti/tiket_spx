<?php
class Tiket{
  
  private $conn;
  private $table_name = "tiket";


  public $id;
  public $nopol;
  public $nama_driver;
  public $nama_mekanik;
  public $km_unit;
  public $keluhan;
  public $tanggal_servis;
  public $status;
  
  public function __construct($db){
    $this->conn = $db;
  }
  
	
	
	
	function readAll(){

	    $query = "SELECT * FROM tiket
	              #JOIN mekanik ON tiket.nama_mekanik=mekanik.nama_mekanik     
	                   
	              #JOIN 213_pelanggan ON tiket.id_pelanggan=213_pelanggan.id_pelanggan
		          #JOIN 213_sparepart ON tiket.id_sparepart=213_sparepart.id_sparepart
		         # JOIN unit ON tiket.nopol=unit.nopol
		          WHERE status = 'Closed' ";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		
		return $stmt;
	}
	function readmen(){

		$query = "select tiket.nama_mekanik, count(*) from tiket inner join mekanik on tiket.nama_mekanik = mekanik.nama_mekanik join unit on tiket.nopol=unit.nopol group by tiket.nama_mekanik";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		
		return $stmt;
	}
	
	// used when filling up the update product form
	
	// update the product
	

	function countAll(){

		$query = "SELECT * FROM tiket
				 
		          JOIN mekanik ON tiket.nama_mekanik=mekanik.nama_mekanik 
		          #JOIN 213_pelanggan ON tiket.id_pelanggan=213_pelanggan.id_pelanggan
		          #JOIN 213_sparepart ON tiket.id_sparepart=213_sparepart.id_sparepart
		          JOIN unit ON tiket.nopol=unit.nopol";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		
		return $stmt->rowCount();
	}
	
}
?>