<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;
use yii\bootstrap\Carousel;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="<?=Yii::$app->request->BaseUrl?>/kopistat.ico" type="image/x-icon" />
    <link href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@600&display=swap" rel="stylesheet">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => Yii::$app->name,
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top navbar-default',
            // 'style' => 'background-color: brown;'
        ],

    ]);
    $menuItems = [
        ['label' => 'Home', 'url' => ['/site/index']],
        ['label' => 'Opini', 'url' => ['/opini/idx']],
        // ['label' => 'About', 'url' => ['/site/about']],
        // ['label' => 'Contact', 'url' => ['/site/contact']],
        // ['label' => 'Profil', 'url' => ['/site/profil']],
        // ['label' => 'Submit', 'url' => ['/opini/create']],
        // ['linkOptions' => ['style' => 'color: #000;']]
    ];
    if (Yii::$app->user->isGuest) {
        // $menuItems[] = ['label' => 'Signup', 'url' => ['/site/signup']];
        $menuItems[] = ['label' => 'Login', 'url' => ['/site/login']];
    } else {
        $menuItems[] = ['label' => 'Profil', 'url' => ['/writer/view?id='.Yii::$app->user->identity->id],'active' => in_array(\Yii::$app->controller->id, ['writer'])];
        $menuItems[] = ['label' => 'Submit', 'url' => ['/opini/create']];

        $menuItems[] = '<li>'
            . Html::beginForm(['/site/logout'], 'post')
            . Html::submitButton(
                'Logout (' . Yii::$app->user->identity->nama . ')',
                ['class' => 'btn btn-link logout']
            )
            . Html::endForm()
            . '</li>';
    }
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right',],
        'items' => $menuItems,
        // 'linkOptions' => ['style' => 'color: #000;'],
    ]);
    NavBar::end();
    ?>

    <!-- <div class="container container2" style="margin-top:10px;" > -->
    <div class="container container2" style="" >
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer" style="background-color:black; color:white; height:auto;">
    <div class="container">
        <div class="col-lg-6 col-md-6 col-xs-6" style="text-align:right">
            <p style="text-align:right"> <span class="glyphicon glyphicon-link"></span> http://riau.bps.go.id</p> 
            <p> <span class="glyphicon glyphicon-home"></span> J.l. Pattimura No.12, Pekanbaru</p>
        </div>
        <!-- <br> -->
        <!-- <div style="display: flex; justify-content: center;"> -->
        <div class="col-lg-6 col-md-6 col-xs-6" style="text-align:left">
            <p> <span class="glyphicon glyphicon-earphone"></span> (0761) 23042</p>
            <p> <span class="glyphicon glyphicon-envelope"></span> bps1400@bps.go.id</p>
        </div>
        <br>
        <div class="col-lg-12 col-md-12 col-xs-12">
            <p class="pull-left">&copy; <?= Html::encode(Yii::$app->name) ?> <?= date('Y') ?></p>
            <p class="pull-right"><?= Yii::powered() ?></p>
        </div>
        
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
