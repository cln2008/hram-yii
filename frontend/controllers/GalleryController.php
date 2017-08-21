<?php
/**
 * Контроллер для отображения галереи
 * Created by PhpStorm.
 * Date: 20.08.2017 15:19
 */

namespace frontend\controllers;
use Yii;
use yii\web\Controller;
use common\models\gallery\Gallery;


class GalleryController extends Controller
{

    public function actionIndex()
    {
        $galleries = Gallery::find()->with('images')->where(['is_active' => '1'])->all();
        return $this->render('index', ['pageText' => 'Отображение галерей', 'galleries' => $galleries]);
    }

    public function actionView()
    {
        echo "<h2>SHOW GALLERY</h2>";

    }

}