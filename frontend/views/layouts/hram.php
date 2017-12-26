<?php

use yii\helpers\Html;
// use yii\bootstrap\Nav;
// use yii\bootstrap\NavBar;
// use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
// use common\widgets\Alert;

AppAsset::register($this);
$this->title = 'Храм Святого Георгия Победоносца';
?>

<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Храм Святого Георгия Победоносца Ирпень, с. Романовка">

    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <?php $this->head() ?>
</head>

<body>
<?php $this->beginBody() ?>

<?php
   echo "<script language=\"Javascript\" src=\"http://script.days.ru/calendar.php?advanced=1&date=" . date('md') . "&dayicon=1&feofan=1\"></script>";
   // виджет отображения заголовка страницы
   echo \frontend\components\Header::widget();
?>

<div class="container" id="main-content" style="min-height: 700px; width: 100%; margin-top: 30px;">
    <?php if( (Yii::$app->controller->id == 'hram') and (Yii::$app->controller->action->id == 'index') ): ?>
        <br>
        <div class="row">
            <?= \frontend\components\MainTop::widget() ?>
        </div>
        <br>
    <?php endif; ?>


    <div class="row">
        <div class="col-md-3" style="border: 0px solid black;">
            <?= \frontend\components\MenuHram::widget() ?>
            <?= \frontend\components\MenuGeorge::widget() ?>
            <?= \frontend\components\MenuToday::widget() ?>
        </div>

        <div class="col-md-9" style="border: 0px solid black;">
            <?= $content ?>
            <!-- <h1 style="color: navy;">TEST 123</h1> -->
        </div>
    </div>
</div>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>