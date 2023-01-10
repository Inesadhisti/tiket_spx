<?php  
include "header.php";
include_once 'includes/request.inc.php';
$pro = new Request($db);
$stmt = $pro->readAll();
$count = $pro->countAll();


if(isset($_POST['hapus-contengan'])){
    {
        $imp = "('".implode("','",array_values($_POST['checkbox']))."')";
    }
    $result = $pro->hapusell($imp);
    if($result){
            ?>
            <script type="text/javascript">
            window.onload=function(){
                showSuccessToast();
                setTimeout(function(){
                    window.location.reload(1);
                    history.go(0)
                    location.href = location.href
                }, 5000);
            };
            </script>
            <?php
    } else{
            ?>
            <script type="text/javascript">
            window.onload=function(){
                showErrorToast();
                setTimeout(function(){
                    window.location.reload(1);
                    history.go(0)
                    location.href = location.href
                }, 5000);
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
	  <li class="active"><span class="fa fa-wrench"></span> Data Request Servis</li>
	</ol>
<form method="post">
    <div class="row">
        <div class="col-md-6 text-left">
            <strong style="font-size:18pt;"><span class="fa fa-wrench"></span> Data Request Servis</strong>
        </div>
        <div class="col-md-6 text-right">
            <button type="submit" name="hapus-contengan" class="btn btn-danger"><span class="fa fa-close"></span> Hapus Yang Ditandai</button>
            <button type="button" onclick="location.href='request-baru.php'" class="btn btn-success"><span class="fa fa-clone"></span> Tambah Data</button>
        </div>
    </div>
    <br/>
    <table width="100%" class="table table-striped table-bordered" id="tabeldata">
        <thead>
            <tr class="text-center">
                <th width="10px"><input type="checkbox" name="select-all" id="select-all" /></th>

                <th style="vertical-align:middle;">No</th>
                <th style="vertical-align:middle;">Nopol</th>
                <th style="vertical-align:middle;">Tipe Unit</th>
                <th style="vertical-align:middle;">Nama Driver</th>
                <th style="vertical-align:middle;">Nama Mekanik</th>

             

                <th style="vertical-align:middle;">KM Unit</th>
                <th style="vertical-align:middle;">Keluhan</th>
                  <th style="vertical-align:middle;">Tanggal Pengajuan</th>             
                <th style="vertical-align:middle;">Status</th>



                <th style="vertical-align:middle;" width="70px">Aksi</th>
            </tr>
			
        </thead>
		
		
               <tbody>
    <?php
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
    ?>
	

            <tr>
            <td style="vertical-align:center;"><input type="checkbox" value="<?php echo $row['no_request'] ?>" name="checkbox[]" /></td>

            <td style="vertical-align:center;"><?php echo $row['no_request'] ?></td>
            <td style="vertical-align:center;"><?php echo $row['nopol'] ?></td>   
            <td style="vertical-align:center;"><?php echo $row['tipe_unit'] ?></td>
            <td style="vertical-align:center;"><?php echo $row['nama_driver'] ?></td> 
            <td style="vertical-align:center;"><?php echo $row['nama_mekanik'] ?></td>
            <td style="vertical-align:center;"><?php echo $row['km_unit'] ?></td>
            <td style="vertical-align:center;"><?php echo $row['keluhan'] ?></td>

<td style="vertical-align:center;"><?php echo $row['tanggal_pengajuan'] ?></td>
            <td style="vertical-align:center;"><?php echo $row['status'] ?></td>




            <td class="text-center" style="vertical-align:middle;">

                <a href="request-ubah.php?id=<?php echo $row['no_request'] ?>" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                
    		  <a href="request-hapus.php?id=<?php echo $row['no_request'] ?>" onclick="return confirm('Yakin ingin menghapus data?')" class="btn btn-danger"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
    	    </td>

            </tr>
		 <?php
    }
    ?>	
   
        </tbody>
    </table>
    </form> 
</div>
</div>	
<?php include "footer.php"; ?>
