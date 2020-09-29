<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\OpiniSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Opinis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="opini-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Opini', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'judul',
            'konten:ntext',
            'kategori',
            'namamedia',
            //'jenismedia',
            //'tautanopini',
            //'dokumentasiopini',
            //'tanggalterbit',
            //'nip',
            //'unitkerja',
            //'kodeprovinsi',
            //'kodekabupaten',
            //'nipatasan',
            //'status',
            //'catatanatasan:ntext',
            //'tanggalbuat',
            //'tanggalupdate',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
