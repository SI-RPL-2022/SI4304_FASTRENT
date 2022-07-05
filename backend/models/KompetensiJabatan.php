<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "kompetensi_jabatan".
 *
 * @property int $id_jabatan
 * @property int $jabatan
 * @property int $jenjang_jabatan
 * @property int $id_karyawan
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
            [['id_jabatan', 'jabatan', 'jenjang_jabatan', 'id_karyawan'], 'required'],
            [['id_jabatan', 'jabatan', 'jenjang_jabatan', 'id_karyawan'], 'integer'],
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
            'id_karyawan' => 'Id Karyawan',
        ];
    }
}
