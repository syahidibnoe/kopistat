<?php
use common\models\Opini;
use yii\bootstrap\Carousel;
use yii\bootstrap\Progress;
use yii\bootstrap\Alert;
use yii\helpers\Html;
use yii\data\ActiveDataProvider;



$this->title = 'KopiStat';
// $baseURL = Yii::$app->request->baseUrl;
// echo Carousel::widget([
//     'items' => [
//         // the item contains only the image
//         '<img src="'. $baseURL .'/img/bpsriau.jpg"/>',
//         '<img src="'. $baseURL .'/img/bpsriau1.jpg"/>',
//     ]
// ]);
?>

<!-- <div style="position:absolute; top:0; left:0; right:0; margin-top:50px"> -->
<div class= 'carous' style=" text-align:center; opacity:1">
	<?php
	$baseURL = Yii::$app->request->baseUrl;
	echo Carousel::widget([
			'items' => [
					// the item contains only the image
					'<img src="'. $baseURL .'/img/bpsriau.jpg"/>',
					'<img src="'. $baseURL .'/img/bpsriau1.jpg"/>',
			]
	]);
	?>
</div>

<!-- <div class="site-index " style="margin-top:150px">    -->
<div class="site-index">
  <div class="body-content landing container">

	<div class="row"> 
		<?php
			$i=0;
			$posts = $dataProvider->getModels();
			$media_online = new ActiveDataProvider([
				'query' => Opini::find()->where(['jenismedia'=>2]),
			]);
			$media_cetak = new ActiveDataProvider([
				'query' => Opini::find()->where(['jenismedia'=>1]),
			]);
			$media_both = new ActiveDataProvider([
				'query' => Opini::find()->where(['jenismedia'=>3]),
			]);
			$penulis = new ActiveDataProvider([
				'query' => Opini::find()->select(['nip'])->distinct(),
			]);

			$info1=count($media_cetak->getModels())+count($media_both->getModels());
			$info2=count($media_online->getModels())+count($media_both->getModels());
			$info3=count($penulis->getModels());
			
			// $new = $provider->getModels();
			echo '<br>'
		?>
		<div class="col-lg-3 col-3 col-sm-3 col-md-3 col-xs-6" style="border-radius: 5px; margin-top:10px;">
			<div style="height:10px; background-color:#85C1E9; border-radius: 20px;"></div>
			<div class="bg-info" style="padding:3px; height:90px; " >             
				<p> 			  
					<h1 style = "font-size:60px; text-align: center; margin: 0px 10px 0px 10px; width:25%; float:left;"><b><?=count($posts)?></b></h1>
					<p><h3 style="margin:20px auto 0px auto;"><b>Opini</b></h3>
					telah diunggah
					</p>
				</p>
			</div>
		</div>

		<div class="col-lg-3 col-3 col-sm-3 col-md-3 col-xs-6" style="border-radius: 5px; margin-top:10px;">
			<div style="height:10px; background-color:#85C1E9; border-radius: 20px;"></div>
			<div class="bg-info" style="padding:3px; height:90px; " >             
				<p> 			  
					<h1 style = "font-size:60px; text-align: center; margin: auto 10px auto 10px; width:25%; float:left;"><b><?=$info1?></b></h1>
					<p> Opini telah terbit di Media Online
					</p>
				</p>
			</div>
		</div>

		<div class="col-lg-3 col-3 col-sm-3 col-md-3 col-xs-6" style="border-radius: 5px; margin-top:10px;">
			<div style="height:10px; background-color:#85C1E9; border-radius: 20px;"></div>
			<div class="bg-info" style="padding:3px; height:90px; " >             
				<p> 			  
					<h1 style = "font-size:60px; text-align: center; margin: auto 10px auto 10px; width:25%; float:left;"><b><?=$info2?></b></h1>
					<p style="margin:auto 0px auto 0px"> Opini telah terbit di Media Cetak
					</p>
				</p>
			</div>
		</div>

		<div class="col-lg-3 col-3 col-sm-3 col-md-3 col-xs-6" style="border-radius: 5px; margin-top:10px;">
			<div style="height:10px; background-color:#85C1E9; border-radius: 20px;"></div>
			<div class="bg-info" style="padding:3px; height:90px; " >             
				<p align:center> 			  
					<h1 style = "font-size:60px; text-align: center; margin: 0px 10px 0px 10px; width:25%; float:left;"><b><?=$info3?></b></h1>
					<p><h3 style="margin:0px auto 0px auto;"><b>Penulis</b></h3>
					telah mengunggah tulisannya
					</p>
				</p>
			</div>
		</div>
	</div>

		<div class="kopi success" style="margin-top:15px;  margin-left:auto; margin-right:auto;  margin-bottom: 30px; width:85%; background-color:lightgreen; padding:5px 20px 5px 20px;border-radius: 10px;">
				<?php
				// Alert::begin(['options' => ['class' => 'alert-info',],]);
				?>
				<h1 align=center style="font-family: 'Fira Sans', sans-serif;">KopiStat BPS Provinsi Riau</h1>
				<!-- <p class="lead" align=center style="text-align:justify"><b>Selamat Datang di KopiStat BPS Provinsi Riau !</b> -->
				<p class="kopi" align=center style="text-align:justify; "><b>Selamat Datang di KopiStat BPS Provinsi Riau !</b>
        KopiStat merupakan <i>paltform</i> kumpulan opini dan karya tulis yang ditulis oleh pegawai-pegawai BPS dan telah terbit di berbagai media, baik cetak maupun online. Tempatnya sharing knowledge para statistisi, peneliti, pranata komputer, dan penulis lainnya di Badan Pusat Statistik.
        </p>
				<?php
				// Alert::end();	
				?>
		</div>

		<div class="row">
		<div class="col-lg-12">
		<h1 style="font-family: 'Fira Sans', sans-serif; margin-bottom:20px;"><u><b>TERBARU</b></u></h1>
		<!-- <h1 class="judul"><u><b>TERBARU</b></u></h1> -->
		<?php
		foreach ($posts as $post) {
			$i++;
			if ($i<5){
			?>
			 <div class="col-lg-6 col-md-6  konten kotak" align=justify > 
					<h4 style="margin:0px; font-family: 'Fira Sans', sans-serif;"><?=$post->judul?></h4>
					<small>Oleh : <?=$post->nip0->nama?>
					<br> Terbit di <?=$post->namamedia?> pada <?=Yii::$app->formatter->asDate($post->tanggalterbit)?></small><br>
					<div class="foto" style="background:url(<?=Yii::$app->request->baseUrl?>/foto/<?=$post->nip ?>.jpg); background-size: cover; float:left; border-radius: 5px;  margin:10px 13px 0px 0px; ">
          </div>
					<p style="margin-top:3px;"> <?=substr($post->konten,0,290).'....';?></p>
					<a class="btn btn-default btn-baca" style="" href="<?=Yii::$app->request->baseUrl?>/opini/v?id=<?=$post->id?>">Baca Selengkapnya &raquo;</a>
					</div>
			<?php
			}else{
				if ($i>10){ break;}
				if ($i==5){ echo '</div></div><h1 style="font-family:'."'Fira Sans'".', sans-serif;margin-top:70px;"><u>Baca Juga </u></h1> <div class=row>'; }
			?>
			<!-- <div class="col-lg-4 konten kotak baca-juga" align=justify style="height:250px; position:relative;"> -->
			<div class="col-lg-4 col-md-4 konten kotak baca-juga" align=justify style="">
					<h4 style="margin-bottom:0px; margin-top:0px; font-family: 'Fira Sans', sans-serif;"><?=$post->judul?></h4>
					<small>Oleh : <?=$post->nip0->nama?></small>
					
					<p><?=substr($post->konten,0,350)?>...</p>
					<a class="btn btn-default btn-baca" style="text-align:right;" href="<?=Yii::$app->request->baseUrl?>/opini/v?id=<?=$post->id?>">Baca Selengkapnya &raquo;</a>
									
			 </div>
			 <?php
			}
		}
	?>
		</div>
		
	<br>
	<!-- <div id="w1" class="alert-info alert fade in">		
        <p class="lead" align=center><b>KopiStat BPS :</b>
        Kumpulan Opini dan Karya Tulis Badan Pusat Statistik 
		<br><b>Opini</b> yang dimuat merupakan buah pemikiran para penulis di Badan Pusat Statistik yang telah dipublikasikan di media cetak maupun online.
		Adapun <b>Karya Tulis</b> yang dimaksud mencakup Jurnal, Paper, Makalah, Skripsi, Tesis, Disertasi, Serta laporan proyek/aksi perubahan pada pendidikan dan pelatihan yang diselenggarakan oleh Badan Pusat Statistik.
        </p>
	</div>	  -->
    </div>
	
</div>
