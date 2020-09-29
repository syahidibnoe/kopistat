<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Writer */

$this->title = $model->nama;
// $this->params['breadcrumbs'][] = ['label' => 'Writers', 'url' => ['index']];
$this->params['breadcrumbs'][] = 'Profil - '.$this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="writer-view container">

    <ul class="nav nav-tabs">
        <li class="nav-item active">
            <a href="#profil" class="nav-link" role="tab" data-toggle="tab">Data Diri</a>
        </li>
        <li class="nav-item">
            <a href="#tulisan" class="nav-link"  role="tab" data-toggle="tab">Tulisan Saya</a>
        </li>
        <li class="nav-item">
            <a href="#stat_profil" class="nav-link"  role="tab" data-toggle="tab">Statistik Saya</a>
        </li>
    </ul>

    <div class="tab-content col-lg-12">
    <div class="col-lg-1"></div>            
        <!-- tab pane profil -->
        <div role="tabpanel" class="tab-pane active " id="profil">
            <div class="col-lg-3" style="text-align:center;">
                <div style="border-radius: 10px; background:url(<?=Yii::$app->request->baseUrl?>/foto/<?=$model->nip ?>.jpg); width:250px; height:300px; background-size: cover; margin-top:15px">
                </div>
                <!-- <img style="border-radius:150%;" src="<?=Yii::$app->request->baseUrl?>/foto/<?=$model->nip ?>.jpg" width=250 style=" margin: 1em;" > -->
            </div>

            <div class="col-lg-8">
                <h1 style="margin-top:10px;" > <b><?= Html::encode($this->title) ?></b></h1>
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        'nipbaru',
                        [
                            'label'=>'Unit Kerja',
                            'value'=> $model->getKantor()->unitkerja.' - '.$model->kabupaten.', '.$model->provinsi ,
                        ],
                        'alamatkantor',
                        'jabatan',
                        'eselon',
                        'golongan',
                        'email:email',
                    ],
                ]) ?>
                <p style="float:right">
                  <?= Html::a('Edit Profil', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
                </p>
            </div>

        </div>


        <!-- tab pane statistik -->
        <div role="tabpanel" class="tab-pane" id="stat_profil">
            <p> <br>untuk sementara fitur ini belum tersedia</p>
        </div>   

        <!-- tab pane tulisan -->
        <div role="tabpanel" class="tab-pane" id="tulisan">
            <!-- tulisan -->
           <?php
            $opinis = $dataProvider2->getModels();

            foreach ($opinis as $opini) {			
            ?>
            <div class="col-lg-12" align=justify>
              <div class="col-lg-1"></div>
              <div class="col-lg-10 kotak">
                <h3 style="margin-top:0px;"><b><?=$opini->judul?></b></h3>
                Terbit di <?=$opini->namamedia?> pada <?=Yii::$app->formatter->asDate($opini->tanggalterbit)?></small>
                    <?=substr($opini->konten,0,500)?>...</p>
                <div style="text-align:right">
                    <a class="btn btn-default"  href="<?=Yii::$app->request->baseUrl?>/opini/v?id=<?=$opini->id?>">Baca Selengkapnya &raquo;</a>
                    <a class="btn btn-primary konten" href="<?=Yii::$app->request->baseUrl?>/opini/update?id=<?=$opini->id?>">Edit Tulisan</a>
                    <a class="btn btn-danger konten" href="<?=Yii::$app->request->baseUrl?>/opini/delete?id=<?=$opini->id?>">Hapus</a>
                </div>
              </div>
                
            </div>

            <?php 
            }
            echo \yii\widgets\LinkPager::widget([
                'pagination' => $dataProvider2->pagination,
                ]);
            ?>
        </div>

 
    </div>
     
</div>


