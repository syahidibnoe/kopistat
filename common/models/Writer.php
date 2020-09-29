<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "writer".
 *
 * @property string $nama
 * @property string $email
 * @property string $username
 * @property string $nip
 * @property string $nipbaru
 * @property string $kodeorganisasi
 * @property string $kodeprovinsi
 * @property string $kodekabupaten
 * @property string $alamatkantor
 * @property string $provinsi
 * @property string $kabupaten
 * @property string $golongan
 * @property string $jabatan
 * @property string $foto
 * @property string $eseleon
 *
 * @property Opini[] $opinis
 */
class Writer extends \yii\db\ActiveRecord 
{
    /**
     * {@inheritdoc}
     */

    public $profil_upd;

    public static function tableName()
    {
        return 'writer';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            // [['nama', 'email', 'username', 'nip', 'nipbaru', 'kodeorganisasi', 'kodeprovinsi', 'kodekabupaten', 'alamatkantor', 'provinsi', 'kabupaten', 'golongan', 'jabatan', 'foto', 'eselon','status'], 'required'],
            [['nama','nipbaru', 'kodeorganisasi','alamatkantor', 'provinsi', 'kabupaten', 'golongan', 'jabatan','eselon', 'email'], 'required', 'on' => 'update'],
            [['nama', 'email', 'username', 'provinsi', 'kabupaten', 'jabatan', 'foto'], 'string', 'max' => 100],        
            [['created_at','updated_at'], 'string', 'max' => 25],
            [['nip'], 'string', 'max' => 9],
            [['nipbaru'], 'string', 'max' => 19],
            [['kodeorganisasi'], 'string', 'max' => 12],
			[['golongan'], 'string', 'max' => 6],
            [['kodeprovinsi', 'kodekabupaten'], 'string', 'max' => 2],
            [['alamatkantor'], 'string', 'max' => 250],
            [['eselon'], 'string', 'max' => 4],
            // [['eselon','status'], 'string', 'max' => 4],
            [['email'], 'unique'],
            [['username'], 'unique'],
            [['nip'], 'unique'],
            [['nipbaru'], 'unique'],
            [['profil_upd'],'file']
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'nama' => 'Nama Lengkap',
            'email' => 'Email',
            'username' => 'Username',
            'nip' => 'Nip',
            // 'nipbaru' => 'Nipbaru',
            'nipbaru' => 'NIP',
            'kodeorganisasi' => 'Kodeorganisasi',
            'kodeorganisasi' => 'Kode Unit Kerja',
            'kodeprovinsi' => 'Kodeprovinsi',
            'kodekabupaten' => 'Kodekabupaten',
            'alamatkantor' => 'Alamat Kantor',
            'provinsi' => 'Provinsi',
            'kabupaten' => 'Kabupaten',
            'golongan' => 'Golongan',
            'jabatan' => 'Jabatan',
            'foto' => 'Foto',
            'eselon' => 'Eselon',
            'profil_upd'=>'Update foto'
        ];
    }

    /**
     * Gets query for [[Opinis]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getOpinis()
    {
        return $this->hasMany(Opini::className(), ['nip' => 'nip']);
    }
	
	public static function findByNip($nip)
    {
        return static::findOne(['nip' => $nip]);
    }

    // public function getKantor($id_satker)
    public function getKantor()
    {   
        // $id_satker=
        if(substr($this->kodeorganisasi,-5,3)=='928'){
            $id_satker=substr($this->kodeorganisasi,-5,3).'00';
        } else {
            $id_satker=substr($this->kodeorganisasi,-5,2).'000';
        }
        $kantor = Masterunitkerja::find()
                                // ->where(['unitkerjaid' => $id_satker])
                                ->where(['unitkerjaid' => $id_satker])
                                ->one();
        return $kantor;
    }

    public function getTulisan()
    {
        $opini = Opini::find()
            // ->where(['unitkerjaid' => $id_satker])
            ->where(['nip' => Yii::$app->user->identity->nip])
            ->all();
        return $opini;
    }
}
