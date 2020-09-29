<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Opini */

$this->title = 'Update Opini: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Opinis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="opini-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
