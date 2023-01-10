<?php  
include "header.php";
include_once 'includes/laporan.inc.php';
$pro = new Tiket($db);
$stmt = $pro->readAll();
$count = $pro->countAll();


if(isset($_POST['hapus-contengan'])){
    $imp = "('".implode("','",array_values($_POST['checkbox']))."')";
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
	  <li class="active"><span class="fa fa-wrench"></span> Data Laporan</li>
	</ol>
<form method="post">
    <div class="row">
        <div class="col-md-6 text-left">
            <strong style="font-size:18pt;"><span class="fa fa-wrench"></span> Data Laporan</strong>
        </div>

    </div>
    <br/>
    <table width="100%" class="table table-striped table-bordered" id="tabeldata">
        <thead>
            <tr class="text-center">
                

                <th style="vertical-align:middle;">No</th>
                <th style="vertical-align:middle;">Nopol</th>
                <th style="vertical-align:middle;">Tipe Unit</th>
                <th style="vertical-align:middle;">Nama Driver</th>


                <th style="vertical-align:middle;">Nama Mekanik</th>

                <th style="vertical-align:middle;">KM Unit</th>
                <th style="vertical-align:middle;">Keluhan</th>

				<th style="vertical-align:middle;">Tanggal Servis</th>
                <th style="vertical-align:middle;">Status</th>



            </tr>
			
        </thead>
		
		
               <tbody>
    <?php
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
    ?>
	

            <tr>
            

            <td style="vertical-align:center;"><?php echo $row['no_tiket'] ?></td>
            <td style="vertical-align:center;"><?php echo $row['nopol'] ?></td> 
             <td style="vertical-align:center;"><?php echo $row['tipe_unit'] ?></td>             
            <td style="vertical-align:center;"><?php echo $row['nama_driver'] ?></td> 
    	    <td style="vertical-align:center;"><?php echo $row['nama_mekanik'] ?></td>
            <td style="vertical-align:center;"><?php echo $row['km_unit'] ?></td>
            <td style="vertical-align:center;"><?php echo $row['keluhan'] ?></td>

		    <td style="vertical-align:center;"><?php echo $row['tanggal_servis'] ?></td>
            <td style="vertical-align:center;"><?php echo $row['status'] ?></td>

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
