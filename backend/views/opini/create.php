<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Opini */

$this->title = 'Create Opini';
$this->params['breadcrumbs'][] = ['label' => 'Opinis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="opini-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
