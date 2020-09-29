<?php

use yii\helpers\Html;



/* @var $this yii\web\View */
/* @var $model common\models\Opini */

$this->title = $model->judul;
$this->params['breadcrumbs'][] = ['label' => 'Opini', 'url' => ['idx']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="opini-view">


    <h1 align=center><b><?= Html::encode($this->title) ?></b></h1>   
 
	<div class="container row">		
		<div align=center><b> Oleh : <?=$model->nip0->nama?> <?=$model->nip0->jabatan?>
					<br> Terbit di <?=$model->namamedia?> pada <?=Yii::$app->formatter->asDate($model->tanggalterbit)?></small>
		</b>
		</div>
			 <div class="col-lg-12" align=justify>					
					<p>
						<div class="foto_v" style="background:url(/kopistat/frontend/web/foto/<?=$model->nip ?>.jpg); background-size: cover; float:left; border-radius: 5px;  margin:10px 13px 0px 0px; ">
						</div>
					   <?=$model->konten?></p>
					 <p>Artikel Asli Dapat Diakses Melalui: <a href="<?=$model->tautanopini?>"><?=$model->tautanopini?></a></p>
					 <br>
			 </div>

			 <div style="text-align:center;">
				 <a href="<?=Yii::$app->request->baseUrl.'/site/index'?>" class="btn btn-primary">Kembali ke Beranda</a>
			 </div>
			 
	</div>

</div>
