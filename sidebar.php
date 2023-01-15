			<?php if ($_SESSION['tipe_user'] == 'admin') { ?>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title"><span class="fa fa-file"></span> Mekanik</h3>
					</div>
					<div class="panel-body">
						<ul class="nav nav-pills nav-stacked">
							<li role="presentation"><a href="mekanik.php"><span class="fa fa-users"></span> Data Mekanik</a></li>

						</ul>
					</div>
				</div>
			<?php } ?>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title"><span class="fa fa-file"></span> Request Servis</h3>
				</div>
				<div class="panel-body">
					<ul class="nav nav-pills nav-stacked">
						<li role="presentation"><a href="request-baru.php"><span class="fa fa-wrench"></span> Pengajuan Servis</a></li>
						<?php if ($_SESSION['tipe_user'] == 'admin') { ?>
							<li role="presentation"><a href="request.php"><span class="fa fa-wrench"></span> Data Request Servis</a></li>
						<?php } ?>
					</ul>
				</div>
			</div>

			<?php if ($_SESSION['tipe_user'] == 'admin') { ?>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title"><span class="fa fa-file"></span> Tiket</h3>
					</div>
					<div class="panel-body">
						<ul class="nav nav-pills nav-stacked">
							<li role="presentation"><a href="tiket.php"><span class="fa fa-wrench"></span> Data Tiket</a></li>

						</ul>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title"><span class="fa fa-file"></span> Laporan</h3>
					</div>
					<div class="panel-body">
						<ul class="nav nav-pills nav-stacked">

							<li role="presentation"><a href="laporan.php"><span class="fa fa-wrench"></span> Data Laporan</a></li>
							<li role="presentation"><a href="laporan-servis.php" target="_blank"><span class="fa fa-file-pdf-o"></span> Download Laporan</a></li>
						</ul>
					</div>
				</div>


			<?php } ?>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title"><span class="fa fa-database"></span> User</h3>
				</div>
				<div class="panel-body">
					<ul class="nav nav-pills nav-stacked">
						<?php if ($_SESSION['tipe_user'] == 'admin') { ?>
							<li role="presentation"><a href="profil.php"><span class="fa fa-user"></span> Profil User</a></li>
							<li role="presentation"><a href="user.php"><span class="fa fa-users"></span> Data User</a></li>
						<?php } ?>
						<li role="presentation"><a href="logout.php"><span class="fa fa-sign-out"></span> Logout</a></li>
					</ul>
				</div>
			</div>