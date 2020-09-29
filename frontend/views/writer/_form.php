<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Writer */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="writer-form">
    <div class="col-lg-3" style="text-align:center;">
    <!-- <div style="text-align:center;"> -->
        <!-- <br><br> <br> -->
        <!-- <img src="<?=Yii::$app->request->baseUrl?>/foto/<?=$model->nip ?>.jpg" width=250 style=" margin: 1em;" > -->
        <div style="border-radius: 10px; background:url(<?=Yii::$app->request->baseUrl?>/foto/<?=$model->nip ?>.jpg); width:250px; height:300px; background-size: cover; margin:15px auto 15px auto;">
        </div>

        <?php $form = ActiveForm::begin(); ?>
        <div id="dokum" class="bukti col-lg-12">
                <?= $form->field($model, 'profil_upd')->fileInput() ?>
        </div>
    </div>

    <div class="col-lg-9">

        <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'nipbaru')->textInput(['maxlength' => true])?>

        <?= $form->field($model, 'kodeorganisasi')->textInput(['maxlength' => true])?>

        <?= $form->field($model, 'alamatkantor')->textInput(['maxlength' => true])?>

        <?= $form->field($model, 'provinsi')->textInput(['maxlength' => true])?>

        <?= $form->field($model, 'kabupaten',[
            'template' => '{label} {input} ',
            'options' => [
                'tag' => 'span',
            ],
        ] )->textInput(['maxlength' => true])->label('Kabupaten')?>
        <div style= "text-align:right;"><small>*Jika unit kerja adalah BPS Provinsi, tuliskan nama provinsi pada kolom ini</small></div>

        <?= $form->field($model, 'jabatan')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'eselon')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'golongan')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

        <!-- <?= $form->field($model, 'username')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'nip')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'kodeprovinsi')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'kodekabupaten')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'foto')->textInput(['maxlength' => true]) ?> -->

        <div class="form-group">
            <?= Html::submitButton('Simpan Perubahan', ['class' => 'btn btn-success']) ?>
            <a class="btn btn-primary" style="" href="<?=Yii::$app->request->baseUrl?>/writer/view?id=<?=Yii::$app->user->identity->id?>">Batal</a>
        </div>

        <?php ActiveForm::end(); ?>


    </div>
</div>