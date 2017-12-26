<?php
// use frontend\components\NewsBlock;
// use yii\data\Pagination;
use yii\helpers\Url;
use yii\helpers\Html;
use yii\widgets\LinkPager;
// use Yii;

Yii::$app->formatter->timeZone = 'UTC';

?>

<?/*= \frontend\components\SiteBlock::widget(['blockName' => 'header'])*/ ?>

<div class="container" id="main-content" style="min-height: 700px; width: 100%;">

    <div class="row">

                <div class="panel panel-default">
                    <div class="panel-heading"><span style="font-family: 'Conv_cyrillic_old'; font-size: 22px; color: #006400;">Новости</span></div>
                    <div class="panel-body">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?= Url::home() ?>">На главную</a></li>
                            <li class="breadcrumb-item active">Новости</li>
                        </ol><hr>
                        <?php foreach($items as $item): ?>
                            <div class="row" style="padding-left: 15px; ">
                                <div class="col-sm-4">
                                    <a href="#" class="">
                                        <?= Html::img("@web/img/news/{$item->news_image}", ['alt' => '', 'title' => $item->news_title, 'class' => 'img-responsive']) ?>
                                    </a>
                                </div>
                                <div class="col-sm-8">
                                    <h3 class="title"><?= $item->news_title ?></h3>
                                    <p class="text-muted"><?= Yii::$app->formatter->asDate($item->news_date, 'php:d.m.Y') ?></p>
                                    <p style="text-indent: 15px;"><?= $item->news_description ?></p>
                                    <p class="text-muted">
                                        <a href="<?= Url::to(['news', 'id' => $item->id]) ?>">Читать далее ...</a>
                                    </p>
                                </div>
                            </div>
                            <hr>
                        <?php endforeach; ?>
                    </div>
                </div>

    </div>
</div>



