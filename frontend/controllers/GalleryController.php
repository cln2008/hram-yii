<?php
/**
 * Контроллер для отображения галереи
 * Created by PhpStorm.
 * Date: 20.08.2017 15:19
 */

namespace frontend\controllers;
use Yii;
use yii\web\Controller;


class GalleryController extends Controller
{

    public function actionIndex()
    {
        return $this->render('index', ['pageText' => 'Отображение галерей']);
    }

    public function actionView()
    {
        echo "<h2>SHOW GALLERY</h2>";

    }

}