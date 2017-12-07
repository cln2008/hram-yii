<?php
/**
 * Created by PhpStorm.
 * User: Alexey Manko
 * DateTime: 07.12.2017 18:10
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