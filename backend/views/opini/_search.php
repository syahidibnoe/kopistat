<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\OpiniSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="opini-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'judul') ?>

    <?= $form->field($model, 'konten') ?>

    <?= $form->field($model, 'kategori') ?>

    <?= $form->field($model, 'namamedia') ?>

    <?php // echo $form->field($model, 'jenismedia') ?>

    <?php // echo $form->field($model, 'tautanopini') ?>

    <?php // echo $form->field($model, 'dokumentasiopini') ?>

    <?php // echo $form->field($model, 'tanggalterbit') ?>

    <?php // echo $form->field($model, 'nip') ?>

    <?php // echo $form->field($model, 'unitkerja') ?>

    <?php // echo $form->field($model, 'kodeprovinsi') ?>

    <?php // echo $form->field($model, 'kodekabupaten') ?>

    <?php // echo $form->field($model, 'nipatasan') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'catatanatasan') ?>

    <?php // echo $form->field($model, 'tanggalbuat') ?>

    <?php // echo $form->field($model, 'tanggalupdate') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
