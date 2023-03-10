<?php
session_start();
if (!isset($_SESSION['nama_user'])) {
	echo "<script>location.href='logout.php'</script>";
}
if ($_SESSION['tipe_user'] != 'admin') {
	header("location: logout.php");
}
// Define relative path from this script to mPDF
$nama_dokumen = 'Laporan Servis'; //Beri nama file PDF hasil.
require_once __DIR__ . '/vendor/autoload.php';
$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4']); // Create new mPDF Document

//Beginning Buffer to save PHP variables and HTML tags
ob_start();
?>
<!--sekarang Tinggal Codeing seperti biasanya. HTML, CSS, PHP tidak masalah.-->
<!--CONTOH Code START-->
<?php
//KONEKSI
$host = "localhost"; //isi dengan host anda. contoh "localhost"
$user = "root"; //isi dengan username mysql anda. contoh "root"
$password = ""; //isi dengan password mysql anda. jika tidak ada, biarkan kosong.
$database = "tiket_spx"; //isi nama database dengan tepat.
$conn = mysqli_connect($host, $user, $password, $database);
?>

<style type="text/css">
	p {
		text-align: right;
		font-style: bold;
		font-size: 12px
	}

	h4,
	h1,
	h5,
	h2 {
		text-align: center;
		padding-top: inherit;

	}

	table {
		border-collapse: collapse;
		width: 100%;
	}

	table,
	td,
	th {
		border: 1px solid black;
	}

	tbody tr:nth-child(odd) {
		background-color: #E5E6E6;
	}
</style>
<h2>Warehouse Shopee Xpress</h2>
<h5>Jl. Agung Timur 2 Blok O IV No. 17-18 RT 009/011, RT.10/RW.11, Sunter Jaya, Tanjung Priok, Jakarta Utara</h5>
<hr>

<h4>LAPORAN SERVICE</h4>
<p align="left">Nama Admin: <?php echo $_SESSION['nama_user'] ?></p>
<p align="left">Tanggal: <?php date_default_timezone_set("Asia/Jakarta");
							echo $date = date('d-m-Y |  H:i:s'); ?> </p>

<table>
	<thead>
		<tr>

			<th>No</th>

                <th>Nopol</th>
				<th>Tipe Unit</th>

                <th>Nama Driver</th>


                <th>Nama Mekanik</th>

                <th>KM Unit</th>
                <th>Keluhan</th>

				<th>Tanggal Servis</th>


				<th>Status</th>

		</tr>
	</thead>
	<?php
	$sql = mysqli_query($conn, "SELECT * FROM tiket 
		ORDER BY no_tiket ASC");
	while ($data = mysqli_fetch_assoc($sql)) {
	?>
		<tbody>
			<tr>


				<td><?php echo $data['no_tiket'] ?></td>

				<td><?php echo $data['nopol'] ?></td>
				<td><?php echo $data['tipe_unit'] ?></td>

				<td><?php echo $data['nama_driver'] ?></td>

				<td><?php echo $data['nama_mekanik'] ?></td>

				<td><?php echo $data['km_unit'] ?></td>
				<td><?php echo $data['keluhan'] ?></td>



				<td><?php echo $data['tanggal_servis'] ?></td>
				<td><?php echo $data['status'] ?></td>

			</tr>
		</tbody>
	<?php
	}
	?>
</table>

<!--CONTOH Code END-->

<?php
$html = ob_get_clean(); //Proses untuk mengambil hasil dari OB..

//Here convert the encode for UTF-8, if you prefer the ISO-8859-1 just change for $mpdf->WriteHTML($html);
$mpdf->WriteHTML(utf8_encode($html));
$mpdf->Output($nama_dokumen . ".pdf","D");
exit;
?>