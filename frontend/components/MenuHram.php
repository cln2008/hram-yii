<?php
/**
 * Created by PhpStorm.
 * User: Alexey Manko
 * DateTime: 07.12.2017 16:35
 */

namespace frontend\components;
use yii\base\Widget;
use frontend\models\Pages;


class MenuHram extends Widget
{

    public function init()
    {
        parent::init();
    }

    public function run()
    {
        $data = Pages::find()->where(['page_type' => 2])->all();
        return $this->render("menuHram", compact("data"));
    }
}