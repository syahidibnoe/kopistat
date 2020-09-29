<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\WriterSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Writers';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="writer-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Writer', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'nama',
            'email:email',
            'username',
            'nip',
            'nipbaru',
            //'kodeorganisasi',
            //'kodeprovinsi',
            //'kodekabupaten',
            //'alamatkantor',
            //'provinsi',
            //'kabupaten',
            //'golongan',
            //'jabatan',
            //'foto',
            //'eseleon',
            //'auth_key',
            //'password_hash',
            //'password_reset_token',
            //'status',
            //'created_at',
            //'updated_at',
            //'verification_token',
            //'id',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
