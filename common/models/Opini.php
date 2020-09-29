<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "opini".
 *
 * @property int $id
 * @property string $judul
 * @property string $konten
 * @property int $kategori
 * @property string $namamedia
 * @property int $jenismedia
 * @property string|null $tautanopini
 * @property string|null $dokumentasiopini
 * @property string $tanggalterbit
 * @property string $nip
 * @property string $unitkerja
 * @property string $kodeprovinsi
 * @property string $kodekabupaten
 * @property string|null $nipatasan
 * @property string $status
 * @property string|null $catatanatasan
 * @property string $tanggalbuat
 * @property string $tanggalupdate
 *
 * @property Kategori $kategori0
 * @property Writer $nip0
 * @property Masterunitkerja $unitkerja0
 * @property Masterjenismedia $jenismedia0
 */
class Opini extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */

    public $file;

    public static function tableName()
    {
        return 'opini';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['judul', 'konten', 'kategori', 'namamedia', 'jenismedia', 'tanggalterbit', 'nip', 'unitkerja', 'kodeprovinsi', 'kodekabupaten'], 'required'],
            [['konten', 'catatanatasan'], 'string'],
            [['kategori', 'jenismedia'], 'integer'],
            [['tanggalterbit', 'tanggalbuat', 'tanggalupdate'], 'safe'],
            [[ 'namamedia'], 'string', 'max' => 50],
            [['judul','tautanopini'], 'string', 'max' => 100],
            [['dokumentasiopini'], 'string', 'max' => 30],
            [['nip', 'nipatasan'], 'string', 'max' => 9],
            [['unitkerja'], 'string', 'max' => 5],
            [['kodeprovinsi', 'kodekabupaten'], 'string', 'max' => 2],
            [['status'], 'string', 'max' => 1],
            [['kategori'], 'exist', 'skipOnError' => true, 'targetClass' => Kategori::className(), 'targetAttribute' => ['kategori' => 'id']],
            [['nip'], 'exist', 'skipOnError' => true, 'targetClass' => Writer::className(), 'targetAttribute' => ['nip' => 'nip']],
            [['unitkerja'], 'exist', 'skipOnError' => true, 'targetClass' => Masterunitkerja::className(), 'targetAttribute' => ['unitkerja' => 'unitkerjaid']],
            [['jenismedia'], 'exist', 'skipOnError' => true, 'targetClass' => Masterjenismedia::className(), 'targetAttribute' => ['jenismedia' => 'jenismediaid']],
            [['file'],'file']
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'judul' => 'Judul',
            'konten' => 'Konten',
            'kategori' => 'Kategori',
            'namamedia' => 'Nama Media',
            'jenismedia' => 'Jenis Media',
            'tautanopini' => 'Tautan Opini',
            'dokumentasiopini' => 'Dokumentasi Opini',
            'tanggalterbit' => 'Tanggal terbit',
            'nip' => 'Nip',
            'unitkerja' => 'Unitkerja',
            'kodeprovinsi' => 'Kodeprovinsi',
            'kodekabupaten' => 'Kodekabupaten',
            'nipatasan' => 'Nipatasan',
            'status' => 'Status',
            'catatanatasan' => 'Catatanatasan',
            'tanggalbuat' => 'Tanggalbuat',
            'tanggalupdate' => 'Tanggalupdate',
            'file' => 'Dokumentasi Opini',
        ];
    }

    /**
     * Gets query for [[Kategori0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getKategori0()
    {
        return $this->hasOne(Kategori::className(), ['id' => 'kategori']);
    }

    /**
     * Gets query for [[Nip0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getNip0()
    {
        return $this->hasOne(Writer::className(), ['nip' => 'nip']);
    }

    /**
     * Gets query for [[Unitkerja0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUnitkerja0()
    {
        return $this->hasOne(Masterunitkerja::className(), ['unitkerjaid' => 'unitkerja']);
    }

    /**
     * Gets query for [[Jenismedia0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getJenismedia0()
    {
        return $this->hasOne(Masterjenismedia::className(), ['jenismediaid' => 'jenismedia']);
    }
}
