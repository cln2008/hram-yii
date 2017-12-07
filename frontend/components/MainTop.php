<?php
/**
 * Created by PhpStorm.
 * User: Alexey Manko
 * DateTime: 07.12.2017 16:01
 */

namespace frontend\components;
use yii\base\Widget;

class MainTop extends Widget
{

    public function init()
    {
        parent::init();
    }

    public function run()
    {
        return $this->render("mainTop");
    }
}