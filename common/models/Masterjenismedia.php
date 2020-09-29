<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "masterjenismedia".
 *
 * @property int $jenismediaid
 * @property string $jenismedia
 *
 * @property Opini[] $opinis
 */
class Masterjenismedia extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'masterjenismedia';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['jenismedia'], 'required'],
            [['jenismedia'], 'string', 'max' => 25],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'jenismediaid' => 'Jenismediaid',
            'jenismedia' => 'Jenismedia',
        ];
    }

    /**
     * Gets query for [[Opinis]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getOpinis()
    {
        return $this->hasMany(Opini::className(), ['jenismedia' => 'jenismediaid']);
    }
}
