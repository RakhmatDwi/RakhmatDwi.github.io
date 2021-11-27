<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Maycindi&Farhandinka</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<!-- Font -->
	<link href="https://fonts.googleapis.com/css?family=Playball%7CBitter" rel="stylesheet">
	<!-- Stylesheets -->
	<link href="assets/css/bootstrap.css" rel="stylesheet">
	<link href="assets/css/fluidbox.min.css" rel="stylesheet">
	<link href="assets/css/font-icon.css" rel="stylesheet">
	<link href="assets/css/styles.css" rel="stylesheet">
	<link href="assets/css/responsive.css" rel="stylesheet">
	<link rel="icon" type="image/png" href="assets/images/logo-black.png">
	
</head>
<body>
	<?php require_once('Admin/Api/koneksi.php'); ?>
	<!-- start = Menu -->
	<header>
		<div class="container  fixed-top">
			<a class="logo" href="#"><img src="assets/images/logo-white.png" alt="Logo"></a>
			<div class="menu-nav-icon" data-nav-menu="#main-menu"><i class="icon icon-bars"></i></div>
			<ul class="main-menu visible-on-click" id="main-menu">
				<li><a href="index.php">BERANDA</a></li>
				<li><a href="#sambutan">SAMBUTAN</a></li>
				<li><a href="#ceritaKita">RSVP</a></li>
				<li><a href="#gallery">GALERI</a></li>
				<!-- <li><a href="listTamu.php">TAMU UNDANGAN</a></li> -->
				<!-- <li><a href="aboutApps.php">TENTANG APLIKASI</a></li> -->
				<li><a href="#angpao">Kirim Kado & Angpao</a></li>
				<li><a href="Login.php">MASUK</a></li>
			</ul>
		</div>
	</header>
	<!-- end = menu -->
	
	
	<!-- start = konten save the date -->
	<?php 
		$resepsi = mysqli_query($conn,"SELECT * FROM resepsi");
		while ($infoResepsi = mysqli_fetch_array($resepsi)) {
	?>
	<div class="main-slider" style="background:url(Admin/fileUpload/<?php echo $infoResepsi['fileGambar'];?>); background-size:cover; background-repeat: no-repeat; background-position: center;}"  >
		<div class="display-table center-text">
			<div class="display-table-cell">
				<div class="slider-content">
				
					<i class="small-icon icon icon-tie"></i>
					<?php
						$getTanggal = $infoResepsi['tglResepsi'];
						$pecahTanggal = explode("-", $getTanggal);
						$tahun = $pecahTanggal[0];
						$bulan = $pecahTanggal[1];
						$tanggal = $pecahTanggal[2];
						
						if ($bulan == "01") {
							echo "<h5 = class'date'>".$tanggal." Januari ".$tahun."</h5>";
						} else if ($bulan == "02"){
							echo "<h5 = class'date'>".$tanggal." Februari ".$tahun."</h5>";
						}else if ($bulan == "03"){
							echo "<h5 = class'date'>".$tanggal." Maret".$tahun."</h5>";
						} else if($bulan == "04"){
							echo "<h5 = class'date'>".$tanggal." April ".$tahun."</h5>";
						} else if ($bulan == "05"){
							echo "<h5 class='date'>".$tanggal." Mei ".$tahun."</h5>";
						} else if ($bulan == "06"){
							echo "<h5 class='date'>".$tanggal." Juni ".$tahun."</h5>";
						} else if ($bulan == "07"){
							echo "<h5 = class'date'>".$tanggal." Juli ".$tahun."</h5>";
						} else if ($bulan == "08"){
							echo "<h5 = class'date'>".$tanggal." Agustus ".$tahun."</h5>";
						}else if ($bulan == "09"){
							echo "<h5 = class'date'>".$tanggal." September ".$tahun."</h5>";
						}else if ($bulan == "10"){
							echo "<h5 = class'date'>".$tanggal." Oktober ".$tahun."</h5>";
						}else if ($bulan == "11"){
							echo "<h5 = class'date'>".$tanggal." November ".$tahun."</h5>";
						}else if ($bulan == "12"){
							echo "<h5 = class'date'>".$tanggal." Desember ".$tahun."</h5>";
						}

					?>
					<h3 class="pre-title">Save The Date</h3>
					<h1 class="title"><?php echo $infoResepsi['namaWanita'];?> <i class="icon icon-heart"></i> <?php echo $infoResepsi['namaPria'];?></h1>
					<?php
						}
					?>
				</div>
			</div>
		</div>
	</div>
	<!-- end = konten save the date -->
	
	<!-- start = konten sambutan -->
	<section class="section story-area center-text" id="sambutan">
		<div class="container">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-10">
					
					<div class="heading">
						<h2 class="title">Sambutan</h2>
						<span class="heading-bottom"><i class="icon icon-star"></i></span>
					</div>
					<!-- statrt = untuk menampilkan sambutan -->
					<?php
						$sambutan = mysqli_query($conn,"SELECT * FROM sambutan");
						while ($tampilSambutan=mysqli_fetch_array($sambutan)) {
					?>
					<!-- bagian pembuka sambutan-->
					<p class="desc margin-bottom"><?php echo $tampilSambutan['pembukaSambutan'];?> 
					<br>
					<!-- bagian isi sambutan -->
					<?php echo $tampilSambutan['isiSambutan'];?> 
					<br>
					<!-- bagian penutup sambutan -->
					<?php echo $tampilSambutan['penutupSambutan'];?>
					</p>
					<?php } ?>
					<!-- end = untuk menampilkan sambutan -->
					
				</div>
			</div>
		</div>
	</section>
	<!-- end =konten sambutan -->
	

	<!-- start = Coutdown acara dimulai resepsi -->
	<section class="section counter-area center-text">
		<div class="container">
			<div class="row">
			
				<div class="col-sm-12">
					<div class="heading">
						<h2 class="title">Jangan Lupa</h2>
						<?php
							$hitungTgl = mysqli_query($conn,"SELECT * FROM resepsi");
							while ($hTgl = mysqli_fetch_array($hitungTgl)) {
								$tgl = $hTgl['tglResepsi']; 
								$pTgl = explode("-", $tgl);
								$hYears=$pTgl[0];
								$hMounth = $pTgl[1];
								$hDay = $pTgl[2];
								$jam =  (int)((mktime(0,0,0,$hMounth,$hDay,$hYears)-time())/86400);
						?>
						<span class="heading-bottom"><i class="color-white icon icon-star"></i></span>
					</div>
				</div>
				
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					
					<div class="remaining-time">
						<?php 
							echo "Masih Ada Waktu ".$jam." Hari Lagi, Sampai Tanggal $hDay-$hMounth-$hYears";
							echo "<br>";
							echo "Acara Resepsi Kami Akan Dilaksanakan Pada Tanggal $hDay-$hMounth-$hYears Pukul ".$hTgl['jamResepsi'];
							} 
						?>
						

					</div><br>
					<!-- countdown -->
					<div class="remaining-time timer ">
						<div class="days">
							<span id="days_left"> 0</span>
							days
						</div>
						<div class="hours">
							<span id="hours_left"> 0 </span>
							hours
						</div>
						<div class="mins">
							<span id="mins_left"> 0 </span>
							mins
						</div>
						<div class="secs">
							<span id="secs_left"> 0 </span>
							secs
						</div>
                	</div>

				</div>
				
			</div>
		</div>
	</section>
	<!-- end = Coutdown acara dimulai resepsi -->


	<!-- start = konten cerita -->
	<section class="section w-details-area center-text" id="ceritaKita">
		<div class="container">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-10">
					
					<div class="heading">
						<h2 class="title">RSVP</h2>
						<span class="heading-bottom"><i class="icon icon-star"></i></span>
					</div>
					
					<!-- start = konten bagian cerita  -->
					<div">
					<form method="POST" action="Admin/crudTamu.php?id=">
                    <input type="text" name="kodeT" value="tambah" hidden>
                    <input type="text" name="idUpdate" value=" " hidden>

                    <div class="item form-group">
                      <label class="col-form-label col-md-3 col-sm-3 label-align">Nama Tamu Undangan</label>
                      <div class="col-md-6 col-sm-6 offset-md-3">
                        <input type="text" required class="form-control" name="namaTamu" value="">
                      </div>
                    </div>

                    <div class="item form-group">
                      <label class="col-form-label col-md-3 col-sm-3 label-align">No Telp</label>
                      <div class="col-md-6 col-sm-6 offset-md-3">
                        <input type="text" required class="form-control" name="noTelp" placeholder="Nomor Hp 10-12 Digit, Contoh : 081809412771"pattern="^\d{10,12}$" value="">
                      </div>
                    </div>
                    <div class="item form-group">
                      <label class="col-form-label col-md-3 col-sm-3 label-align">Alamat</label>
                      <div class="col-md-6 col-sm-6 offset-md-3">
                        <input type="text" required class="form-control" name="alamat" value="">
                      </div>
                    </div>
                    <div class="item form-group ">
                      <label class="col-form-label col-md-3 col-sm-3 label-align">Kehadiran</label>
                      <div class="col-md-6 col-sm-6 offset-md-3 dropdown ">
                        <!-- <input type="text" required class="form-control" name="action" placeholder="Datang/Tidak Datang" value=""> -->
						<select id="action" required class="form-control" name="action">
							<option selected>Kehadiran</option>
							<option>Hadir</option>
							<option>Tidak Hadir</option>
						</select>
                      </div>
                    </div>
                    <div class="item form-group">
                      <div class="col-md-6 col-sm-6 offset-md-3">
                        <button type="submit" class="btn btn-info">Tambah</button>
                      </div>
                    </div>

                  </form>

						
					</div>
					
				</div>
			</div>
		</div>
	</section>
	<!-- end = konten cerita -->
	
	<!-- start = wedding ceremoni -->
	<section class="section ceremony-area center-text" id="wedding">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					
					<div class="heading">
						<h2 class="title">Wedding & Ceremonies</h2>
						<span class="heading-bottom"><i class="color-white icon icon-star"></i></span>
					</div>

					<div class="ceremony margin-bottom">
						<?php
							$adat = mysqli_query($conn,"SELECT * FROM adat");
							while ($infoAdat = mysqli_fetch_array($adat)) {
								echo "<p class='desc'>".$infoAdat['penjelasan']."</p>";
							}
						?>
						
				
					</div>
					
				</div>
			</div>
		</div>
	</section>
	<!-- end = wedding ceremoni -->
	
	
	<!-- start = gallery prewedding -->
	<section class="section galery-area center-text" id="gallery">
		<div class="container">
			<div class="row">
				
				<div class="col-sm-12">
					
					<div class="heading">
						<h2 class="title">Gallery Prewedding</h2>
						<span class="heading-bottom"><i class="icon icon-star"></i></span>
					</div>
					
					<div class="image-gallery">
						
						<!-- start = untuk menampilkan foto -->
						<!-- nanti setting ukuran 600x400 -->
						<div class="row">
							<?php
								$galeri = mysqli_query($conn,"SELECT * FROM galery LIMIT 6");
								while ($infoGaleri = mysqli_fetch_array($galeri)) {
								
								
							?>
							<div class="col-md-4 col-sm-6">
								<a href="Admin/fileUpload/<?php echo $infoGaleri['namaFile'];?>" data-fluidbox><img class="margin-bottom" src="Admin/fileUpload/<?php echo $infoGaleri['namaFile'];?>" style="width:350px; height:225px;" ></a>
							</div>
							<?php
								}
							?>
							
							
						</div>
						<!-- end = untuk tampilkan foto -->
						
						<a class="btn-2 margin-bottom gallery-btn" href="gallery.php">VIEW ALL GALLERY</a>
						
					</div>
					
				</div>
			</div>
		</div>
	</section>
	<!-- end = galery prewedding -->
	

	<!-- satart = lokasi prewed -->
	<section class="contact-area">
		<div class="contact-wrapper section float-left">
			<div class="container">
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-10">
						<div class="heading">
							<h3 class="title">Lokasi Resepsi</h3>
							<i class="icon icon-star"></i>
						</div>
						
						<div class="margin-bottom">
							<p>Alamat :</p>
							<?php 
							$lokasi = mysqli_query($conn,"SELECT * FROM resepsi");
							while ($infoLokasi = mysqli_fetch_array($lokasi)) {
								 echo $infoLokasi['alamatResepsi'];
								 echo "<h4>".$infoLokasi['namaGedung']."</h4>";
						
							?>
							<a href="https://goo.gl/maps/Ey521uGKEK1jtrXaA"><button type="submit" class="btn btn-info">Alamat Resepsi</button></a>
								
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- start = foto gedung -->
		<div class="contact-wrapper section float-right">
			<div class="container">
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-10">
						<div class="margin-bottom">
							<!-- <img src="Admin/fileUpload/<?php echo $infoLokasi['gambarGedung']; } ?>" style="width :535px; height :350px;"> -->
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d987.9464668857804!2d112.61165892914026!3d-7.917422671322408!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7881f968844669%3A0x7d27999d9544e539!2sJl.%20Pangestu%20Raya%20No.11%2C%20Telasih%2C%20Kepuharjo%2C%20Kec.%20Karang%20Ploso%2C%20Malang%2C%20Jawa%20Timur%2065152!5e0!3m2!1sen!2sid!4v1637571147054!5m2!1sen!2sid" width="450px" height="350px" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end foto gedung -->
		
	
	</section>
	<!-- end = lokasi prewed -->

	<!-- satart = angpao dan kado -->
	<section class="contact-area" id="angpao">
		<div class="contact-wrapper section float-left">
			<div class="container">
				<div class="row">
						
					<div class="col-sm-2"></div>
					
					<div class="col-sm-10">
					<div class="heading">
							<h3 class="title">Kirm Kado</h3>
							<i class="icon icon-star"></i>
						</div>
						<div class="margin-bottom">
							<p>Alamat :</p>
							<!-- <p>Jl. Pangestu no. 11 RT 31 RW 12, Tlasih, Kepuharjo Kecamatan Karangploso</p> -->
							<!-- <input type="textarea" value="Jl. Pangestu no. 11 RT 31 RW 12, Tlasih, Kepuharjo Kecamatan Karangploso" id="pilih" readonly /> -->
							<textarea name="" id="" cols="30" rows="3" readonly>Jl. Pangestu no. 11 RT 31 RW 12, Tlasih, Kepuharjo Kecamatan Karangploso</textarea><br>
        					<button type="submit" onclick="copy_text()" class="btn btn-info">Copy Alamat</button>
								
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- start = foto gedung -->
		<div class="contact-wrapper section float-right">
			<div class="container">
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-8">
						<div class="heading">
							<h3 class="title" style="align-center">Kirim Angpao</h3>
							<i class="icon icon-star"></i>
						</div>
						<div class="margin-bottom">
						<img src="assets/images/qr.jpeg" width="100px" height="450px" alt="qr">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end foto gedung -->
		
	
	</section>
	<!-- endd angpao dan kado  -->
	
	
	<!-- start = footer  -->
	<footer>
		<div class="container center-text" id="sosmed">
			
			<div class="logo-wrapper">
				<a class="logo" href="#"><img src="assets/images/logo-black.png" alt="Logo Image"></a>
				<i class="icon icon-star"></i>
			</div>
			<!-- <ul class="social-icons">
				<?php 
					$sosmed = mysqli_query($conn,"SELECT * FROM sosmed");
					while ($infoSosmed = mysqli_fetch_array($sosmed)) {
						
					
				?>
				<li><a href="#"><i class="icon icon-heart"></i></a></li>
				<li><a href="<?php echo $infoSosmed['twitter'];?>" target="_blank"><i class="icon icon-twitter"></i></a></li>
				<li><a href="<?php echo $infoSosmed['ig'];?>" target="_blank"><i class="icon icon-instagram"></i></a></li>
				<li><a href="<?php echo $infoSosmed['fb'];?>" target="_blank"><i class="icon icon-facebook"></i></a></li>
				<?php
					}
				?>
			</ul> -->
			<ul class="footer-links">
				<li><a href="index.php">BERANDA</a></li>
				<li><a href="#sambuta">SAMBUTAN</a></li>
				<li><a href="#ceritaKita">CERITA KITA</a></li>
				<li><a href="#gallery">GALERI</a></li>
				<li><a href="listTamu.php">TAMU UNDANGAN</a></li>
			</ul>
			<p class="copyright"> Copyright &copy;<script>document.write(new Date().getFullYear());</script>
			 -  Dibuat dengan <i class="icon-heart" aria-hidden="true"></i> oleh StarComp</p>
		</div>
	</footer>
	<!-- end = footer -->

	<script src="assets/js/jquery-3.1.1.min.js"></script>	
	<script src="assets/js/tether.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/jquery.countdown.min.js"></script>
	<script src="assets/js/jquery.fluidbox.min.js"></script>
	<script src="assets/js/scripts.js"></script>
	<script src="assets/js/style.js"></script>
	
</body>
</html>