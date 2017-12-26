<?php

namespace frontend\components;
use yii\base\Widget;
use frontend\models\mMainMenu;
use Yii;



class MainMenu extends Widget{

    public function init(){
        parent::init();
    }

    public function run(){
        // попытаемся получить данные сначала из кэша
        $m = mMainMenu::find()->where(['is_active' => 1])->all();
        // $m = ['Главная', 'Новости', 'О храме', 'Расписание Богослужений', 'Галерея', 'Контакты'];

        return $this->render('mainMenu', compact('m'));

    }
}