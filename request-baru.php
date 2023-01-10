<?php
include_once 'header.php';
if($_POST){
	
	include_once 'includes/request.inc.php';
	$eks = new Request($db);

	$eks->nopol = $_POST['nopol'];
	$eks->tipe_unit = $_POST['tipe_unit'];
	$eks->nama_driver = $_POST['nama_driver'];
	#$eks->nama_mekanik = $_POST['nama_mekanik'];
	$eks->km_unit = $_POST['km_unit'];
	$eks->keluhan = $_POST['keluhan'];
	$eks->tanggal_pengajuan = $_POST['tanggal_pengajuan'];	
	#$eks->tanggal_servis = $_POST['tanggal_servis'];
	#$eks->status = $_POST['status'];

	
	if($eks->insert()){
?>
<script type="text/javascript">
window.onload=function(){
	showStickySuccessToast();
};
</script>
<?php
	}
	
	else{
?>
<script type="text/javascript">
window.onload=function(){
	showStickyErrorToast();
};
</script>
<?php
	}
}
?>
	
	

		<div class="row">
		  <div class="col-xs-12 col-sm-12 col-md-2">
		  <?php
			include_once 'sidebar.php';
			?>
		  </div>
		  <div class="col-xs-12 col-sm-12 col-md-10">
		  <ol class="breadcrumb">
			  <li><a href="index.php"><span class="fa fa-home"></span> Beranda</a></li>
			  <li class="active"><span class="fa fa-clone"></span> Form Servis</li>
			</ol>
		  	<p style="margin-bottom:10px;">
		  		<strong style="font-size:18pt;"><span class="fa fa-wrench"></span> Form Servis</strong>
		  	</p>
		  	<div class="panel panel-default">
		<div class="panel-body">
			
			    <form method="post">


				<div class="form-group">
				    <label for="nopol">Nopol (Tanpa Spasi)</label>
				    <input type="text" class="form-control" id="nopol" name="nopol"  required oninvalid="this.setCustomValidity('Nopol tidak boleh kosong')" oninput="setCustomValidity('')" >
				</div>



				  <div class="form-group">
				    <label for="tipe_unit">Tipe Unit</label>
				    <select class="form-control" id="tipe_unit" name="tipe_unit" required>
					<option value="Blindvan">Blindvan</option>
					<option value="CDD">CDD</option>
					<option value="CDE">CDE</option>

					</select>

<br>

				<div class="form-group">
				    <label for="nama_driver">Nama Driver</label>
				    <input type="text" class="form-control" id="nama_driver" name="nama_driver"  required oninvalid="this.setCustomValidity('Nama driver tidak boleh kosong')" oninput="setCustomValidity('')" >
				</div>



				<div class="form-group">
				    <label for="km_unit">KM Unit</label>
				    <input type="text" class="form-control" id="km_unit" name="km_unit"  required oninvalid="this.setCustomValidity('KM unit tidak boleh kosong')" oninput="setCustomValidity('')" >
				</div>


				<div class="form-group">
				    <label for="keluhan">Keluhan</label>
				    <input type="text" class="form-control" id="keluhan" name="keluhan"  required oninvalid="this.setCustomValidity('Keluhan tidak boleh kosong')" oninput="setCustomValidity('')" >
				</div>

				<div class="form-group">
				    <label for="tanggal_pengajuan">Tanggal Pengajuan (Contoh: 12-Apr-2023)</label>
				    <input type="text" class="form-control" id="tanggal_pengajuan" name="tanggal_pengajuan"  required oninvalid="this.setCustomValidity('Tanggal tidak boleh kosong')" oninput="setCustomValidity('')" >
				</div>



<br>
				  <button type="submit" class="btn btn-primary"><span class="fa fa-save"></span> Simpan</button>
				  <button type="button" onclick="location.href='request.php'" class="btn btn-success"><span class="fa fa-history"></span> Kembali</button>
				</form>
				</div>
				</div>
			  
		  </div>
		</div>

		
		
		<?php
include_once 'footer.php';
?>