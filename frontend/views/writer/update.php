<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Writer */

$this->title = 'Edit Profil: ' . $model->nama;
// $this->params['breadcrumbs'][] = ['label' => 'Penulis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => 'Profil - '.$model->nama, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Edit Profil';
?>
<div class="writer-update">

    <!-- <div class="col-lg-9"> -->
    <div>
        <h1 style="margin-top:0px"><b><?= Html::encode($this->title) ?></b></h1>
        <?= $this->render('_form', [
            'model' => $model,
        ]) ?>
    </div>

    

</div>
