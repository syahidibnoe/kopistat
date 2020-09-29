<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "masterunitkerja".
 *
 * @property string|null $unitkerja
 * @property string $unitkerjaid
 *
 * @property Opini[] $opinis
 */
class Masterunitkerja extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'masterunitkerja';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['unitkerjaid'], 'required'],
            [['unitkerja'], 'string', 'max' => 255],
            [['unitkerjaid'], 'string', 'max' => 10],
            [['unitkerjaid'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'unitkerja' => 'Unitkerja',
            'unitkerjaid' => 'Unitkerjaid',
        ];
    }

    /**
     * Gets query for [[Opinis]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getOpinis()
    {
        return $this->hasMany(Opini::className(), ['unitkerja' => 'unitkerjaid']);
    }
}
