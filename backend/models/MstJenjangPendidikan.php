<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "mst_jenjang_pendidikan".
 *
 * @property int $id_mst_jenjang_pendidikan
 * @property string $jenjang_pendidikan
 * @property string|null $keterangan
 */
class MstJenjangPendidikan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'mst_jenjang_pendidikan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['jenjang_pendidikan'], 'required'],
            [['jenjang_pendidikan', 'keterangan'], 'string', 'max' => 250],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_mst_jenjang_pendidikan' => 'Id Mst Jenjang Pendidikan',
            'jenjang_pendidikan' => 'Jenjang Pendidikan',
            'keterangan' => 'Keterangan',
        ];
    }
}
