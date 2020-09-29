<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Opini */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Opinis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="opini-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            //'id',
            'judul',
            'konten:html',
            'kategori0.kategori',
            'namamedia',
            'jenismedia0.jenismedia',
            'tautanopini:url',
            'dokumentasiopini',
            'tanggalterbit',
            'nip0.nama',
            //'unitkerja',
            //'kodeprovinsi',
            //'kodekabupaten',
            //'nipatasan',
            //'status',
            //'catatanatasan:ntext',
            //'tanggalbuat',
            //'tanggalupdate',
        ],
    ]) ?>

</div>
