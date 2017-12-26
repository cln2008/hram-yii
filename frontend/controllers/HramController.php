<?php
namespace frontend\controllers;

use frontend\models\Common;
use frontend\models\Schedule;
use Yii;
// use yii\base\InvalidParamException;
// use yii\web\BadRequestHttpException;
use yii\web\Controller;
// use yii\filters\VerbFilter;
// use yii\filters\AccessControl;
// use common\models\LoginForm;
// use frontend\models\PasswordResetRequestForm;
// use frontend\models\ResetPasswordForm;
// use frontend\models\SignupForm;
// use frontend\models\ContactForm;
use frontend\models\Pages;
use common\models\News;

/**
 * Site controller
 */
class HramController extends Controller
{


    public function actionIndex()
    {

        $news = News::find()->orderBy(['news_date' => SORT_DESC])->limit(5)->all();
        return $this->render('index', compact("news"));
    }

    public function actionInfo(){

        $alias = yii::$app->request->get('alias');
        $page = Pages::find()->where(['page_alias' => $alias])->one();

        return $this->render('page', compact('page'));
    }

    public function actionGeorg(){

        $page = Pages::find()->where(['page_type' => 1])->one();

        return $this->render('page', compact('page'));
    }

    public function actionSchedule(){
        $schedule = Schedule::find()->where(['sch_month' => 7, 'sch_year' => 2017])->all();

        foreach($schedule as $row){
            echo "<p>".$row->sch_day . "-" . $row->sch_month . "-" . $row->sch_year . "</p>";
            echo "<h3>" . Common::getFullDate($row->id) . "</h3 >";
            echo "<h3>MONTH NUMBER: " . print_r(Common::getMonthName($row->id), true) . "</h3 >";
            echo "<h3>WEEK DAY NUMBER: " . print_r(Common::getWeekDayName($row->id), true) . "</h3 >";
        }
    }

    public function actionContacts()
    {
        return $this->render("contacts");
    }

    public function actionAbout()
    {
        return $this->render("about");
    }

}
