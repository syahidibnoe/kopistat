<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $searchModel common\models\OpiniSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Opini';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="opini-index container">
  <div class="body-content">
  
   <div class="row container2">
		<ul class="nav nav-tabs">
			<li class="nav-item active">
					<a href="#opini" class="nav-link" role="tab" data-toggle="tab">Kumpulan Opini</a>
			</li>
			<li class="nav-item">
					<a href="#ilmiah" class="nav-link"  role="tab" data-toggle="tab">Karya Tulis Ilmiah</a>
			</li>
			<li class="nav-item">
					<a href="#stat" class="nav-link"  role="tab" data-toggle="tab">Statistik</a>
			</li>
    </ul>
		
		<div class="tab-content">
      <!-- tab pane opini -->
			<div role="tabpanel" class="tab-pane active" id="opini">
			<?php
				$posts = $dataProvider->getModels();
				// echo gettype($posts);
				foreach ($posts as $post) {			
					?>
					<div class="col-lg-12 kotak" align=justify>
							<h3 style="margin-bottom:0px; margin-top:0px;"><b><?=$post->judul?></b></h3>
							<small>Oleh : <?=$post->nip0->nama?>
							<br> Terbit di <?=$post->namamedia?> pada <?=Yii::$app->formatter->asDate($post->tanggalterbit)?></small>
							<p>
							<div class="foto" style="border-radius: 5px; background:url(<?=Yii::$app->request->baseUrl?>/foto/<?=$post->nip ?>.jpg); background-size: cover; margin:0px 13px 0px 0px; float:left">
       			   </div>
							<!-- <img src="<?=Yii::$app->request->baseUrl?>/foto/<?=$post->nip?>.jpg" width=110 style="clear: left; float: left; margin-top: 1em; margin-right: 1em;"> -->
								<?=substr($post->konten,0,600)?>...</p>
							<a class="btn btn-default"  href="<?=Yii::$app->request->baseUrl?>/opini/v?id=<?=$post->id?>">Baca Selengkapnya &raquo;</a>
							
					</div>
				<?php } 
				echo \yii\widgets\LinkPager::widget([
					'pagination' => $dataProvider->pagination,
					]);
			?>	
			</div>
			
			<!-- tab pane karya tulis ilmiah -->
			<div role="tabpanel" class="tab-pane" id="ilmiah">
					<div>	
					<br>
					<p> Belum ada karya tulis ilmiah yang diunggah</p>
					</div>
			</div>
			<!-- tab pane karya tulis ilmiah -->
			<div role="tabpanel" class="tab-pane" id="stat">
					<div>	
						<br>
					<p> Untuk sementara fitur ini belum dapat diakses</p>
					</div>
			</div>
		</div>
		
	</div>

</div>
</div>


