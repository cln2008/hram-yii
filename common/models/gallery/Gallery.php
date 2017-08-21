<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 21.08.2017
 * Time: 13:23
 */

namespace common\models\gallery;
use yii\db\ActiveRecord;

class Gallery extends ActiveRecord
{

    public static function tableName()
    {
        return 'galleries';
    }

    public function getImages()
    {
        return $this->hasMany(GalleryImages::className(), ['gallery_id' => 'id'])->andWhere(['is_active' => '1']);
    }
}