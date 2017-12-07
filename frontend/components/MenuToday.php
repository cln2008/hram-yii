<?php
/**
 * Created by PhpStorm.
 * User: Alexey Manko
 * DateTime: 07.12.2017 17:49
 */

namespace frontend\components;
use yii\base\Widget;


class MenuToday extends Widget
{
    public function init()
    {
        parent::init();
    }

    public function run()
    {

        return $this->render("menuToday");
    }

}