<?php
/**
 * Created by PhpStorm.
 * User: Alexey Manko 07.12.2017 18:10
 * Виджет для отображения блока "Житие Георгия Победоносца"
 */

namespace frontend\components;
use yii\base\Widget;

class MenuGeorge extends Widget
{
    public function init()
    {
        parent::init();
    }

    public function run()
    {
        return $this->render("menuGeorge");
    }
}