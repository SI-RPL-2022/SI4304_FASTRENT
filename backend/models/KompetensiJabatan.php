<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "kompetensi_jabatan".
 *
 * @property string $id_jabatan
 * @property string $jabatan
 * @property string $jenjang_jabatan
 * @property int $id_pegawai
 */
class KompetensiJabatan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'kompetensi_jabatan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_jabatan', 'jabatan', 'jenjang_jabatan', 'id_pegawai'], 'required'],
            [['id_pegawai'], 'integer'],
            [['id_jabatan'], 'string', 'max' => 11],
            [['jabatan', 'jenjang_jabatan'], 'string', 'max' => 255],
            [['id_pegawai'], 'unique'],
            [['id_jabatan'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_jabatan' => 'Id Jabatan',
            'jabatan' => 'Jabatan',
            'jenjang_jabatan' => 'Jenjang Jabatan',
            'id_pegawai' => 'Id Pegawai',
        ];
    }
}
