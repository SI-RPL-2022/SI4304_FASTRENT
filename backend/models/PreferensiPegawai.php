<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "preferensi_pegawai".
 *
 * @property int $id_pegawai
 * @property string $Nama
 * @property string $jenis_kelamin
 * @property int $umur
 * @property string $jabatan
 * @property string $penilaian_kinerja
 */
class PreferensiPegawai extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'preferensi_pegawai';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_pegawai', 'Nama', 'jenis_kelamin', 'umur', 'jabatan', 'penilaian_kinerja'], 'required'],
            [['id_pegawai', 'umur'], 'integer'],
            [['Nama', 'jenis_kelamin', 'jabatan', 'penilaian_kinerja'], 'string', 'max' => 255],
            [['id_pegawai'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_pegawai' => 'Id Pegawai',
            'Nama' => 'Nama',
            'jenis_kelamin' => 'Jenis Kelamin',
            'umur' => 'Umur',
            'jabatan' => 'Jabatan',
            'penilaian_kinerja' => 'Penilaian Kinerja',
        ];
    }
}
