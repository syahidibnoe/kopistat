<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use dosamigos\tinymce\TinyMce;
// use yii\jui\DatePicker;
use kartik\date\Datepicker;

/* @var $this yii\web\View */
/* @var $model common\models\Opini */
/* @var $form yii\widgets\ActiveForm */
?>

<?php if (Yii::$app->session->hasFlash('submitted')): ?>

    <div class="alert alert-success">
        Tulisan anda telah berhasil diunggah.
    </div>

    <p>
        Tulisan Anda berhasil diunggah dan akan muncul di halaman beranda. Anda dapat mengedit opini yang telah diunggah pada menu profil pad bagian 'Tulisan saya'.

    </p>
    <div style='text-align:center;'>
        <br><br>
        <?= Html::a('Kembali ke Beranda', ['/site/index'], ['class'=>'btn btn-primary']) ?>
    </div>

<?php else: ?>
    <div class="Container opini-form row">
    <div class="col-lg-12">
        <div class="col-lg-12">
            <?php $form = ActiveForm::begin(['options'=>['enctype'=>'multipart/form-data']]); ?>

            <?= $form->field($model, 'judul')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'konten')->widget(TinyMce::className(), [
            'options' => ['rows' => 20],
            'language' => 'eng',
            'clientOptions' => [
                'plugins' => [
                    "advlist autolink lists link charmap print preview anchor",
                    "searchreplace visualblocks code fullscreen",
                    // "insertdatetime media table contextmenu paste"
                    "insertdatetime media table paste"
                ],
                'toolbar' => "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
            ]
            ]);?>
        </div>

    <!-- <div class="col-lg-12"> -->
        <div class="col-lg-6">
        <?php
            $dataPost=ArrayHelper::map(common\models\Kategori::find()->asArray()->all(), 'id', 'kategori');
            echo $form->field($model, 'kategori')
            ->dropDownList($dataPost,['id'=>'kategori']);
        ?>
        </div>
        <div class="col-lg-6">
        <?= $form->field($model, 'tanggalterbit')->widget(DatePicker::classname(), [
                            'options' => ['placeholder' => 'Tuliskan tanggal terbit'],
                            'pluginOptions' => [
                                'autoclose'=>true,
                                'format'=> 'yyyy-mm-dd']
                            ]);
                        ?>
        </div>
        <!-- </div> -->

        <div class="col-lg-6">
        <?= $form->field($model, 'namamedia')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-lg-6">
        <?php
            $var='ayam';
            $dataPost=ArrayHelper::map(\common\models\Masterjenismedia::find()->asArray()->all(), 'jenismediaid', 'jenismedia');
            echo $form->field($model, 'jenismedia')
            ->dropDownList($dataPost,[
                'jenismediaid'=>'jenismedia']
            );
        ?>
        </div>
        <div id="tautan" class="bukti col-lg-12">
            <?= $form->field($model, 'tautanopini')->textInput(['maxlength' => true]) ?>
        </div>
        <div id="dokum" class="bukti col-lg-12">
            <?= $form->field($model, 'file')->fileInput() ?>
        </div>
        


        <div class="form-group" style="float:right">
            <?= Html::submitButton('Unggah Tulisan', ['class' => 'btn btn-success']) ?>
            
        </div>

        <?php ActiveForm::end(); ?>
    </div>
    </div>
    </div>
<?php endif;?>

<?php

$script = <<< JS
$("#tautan").hide()
$("#opini-jenismedia").on("click", function() {
    var opsi = document.getElementById("opini-jenismedia");
    var pilih = opsi.options[opsi.selectedIndex].text;
    
    $(".bukti").show();
    if(pilih=="Media Cetak"){
        $("#tautan").hide()
    }
    if(pilih=="Media Online"){
        $("#dokum").hide()
    }
});

JS;
$this->registerJs($script);
?>