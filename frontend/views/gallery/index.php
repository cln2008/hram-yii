<?php
/**
 * Created by PhpStorm.
 * User: Alex
 * Date: 20.08.2017
 * Time: 15:21
 */
?>
<?= \frontend\components\Header::widget() ?>

<div class="container" id="main-content" style="min-height: 700px; width: 100%;">
    <br>
    <div class="row">
        <div class="col-md-3" style="border: 0px solid black;">
            <?= \frontend\components\SiteBlock::widget(['blockName' => 'left1']) ?>
            <?= \frontend\components\SiteBlock::widget(['blockName' => 'left2']) ?>
            <?= \frontend\components\SiteBlock::widget(['blockName' => 'left3']) ?>
        </div>

        <div class="col-md-9">
            <div class="panel panel-default" style="border-bottom: none;">
                <div class="panel-heading">
                    <span style="font-family: 'Conv_cyrillic_old'; font-size: 22px; color: #006400;"><?= $pageText ?></span>
                </div>
                <div class="panel-body">
                    <h4>YII:     <?= Yii::getAlias('@yii') ?></h4>
                    <h4>APP:     <?= Yii::getAlias('@app') ?></h4>
                    <h4>RUNTIME: <?= Yii::getAlias('@runtime') ?></h4>
                    <h4>VENDOR:  <?= Yii::getAlias('@vendor') ?></h4>
                    <h4>WEBROOT: <?= Yii::getAlias('@webroot') ?></h4>
                    <h4>WEB:     <?= Yii::getAlias('@web') ?></h4>
                    <h4>IMG:     <?= Yii::getAlias('@img') ?></h4>
                    <hr>
<!--                    <img src='@app/20170410_095547.jpg' alt="" title="Image">-->
                    <?= \yii\helpers\Html::img('@web/img/galleries/20170410_095547.jpg', ['alt' => "", 'title' => "Image"]) ?>



                </div>
            </div>
        </div>

    </div>

</div>
