<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Opini */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="opini-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'judul')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'konten')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'kategori')->textInput() ?>

    <?= $form->field($model, 'namamedia')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'jenismedia')->textInput() ?>

    <?= $form->field($model, 'tautanopini')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'dokumentasiopini')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tanggalterbit')->textInput() ?>

    <?= $form->field($model, 'nip')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'unitkerja')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'kodeprovinsi')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'kodekabupaten')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nipatasan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'status')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'catatanatasan')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'tanggalbuat')->textInput() ?>

    <?= $form->field($model, 'tanggalupdate')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
