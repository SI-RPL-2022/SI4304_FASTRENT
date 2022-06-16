<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "kantor".
 *
 * @property int $id_kantor
 * @property string $nama_kantor
 * @property string $alamat
 * @property int $id_kabupaten
 * @property int $id_provinsi
 * @property int $id_negara
 * @property string|null $longitude
 * @property string|null $latitude
 * @property string|null $keterangan
 */
class Kantor extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'kantor';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama_kantor', 'alamat', 'id_kabupaten', 'id_provinsi', 'id_negara'], 'required'],
            [['id_kabupaten', 'id_provinsi', 'id_negara'], 'integer'],
            [['nama_kantor', 'alamat', 'keterangan'], 'string', 'max' => 250],
            [['longitude', 'latitude'], 'string', 'max' => 150],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_kantor' => 'Id Kantor',
            'nama_kantor' => 'Nama Kantor',
            'alamat' => 'Alamat',
            'id_kabupaten' => 'Id Kabupaten',
            'id_provinsi' => 'Id Provinsi',
            'id_negara' => 'Id Negara',
            'longitude' => 'Longitude',
            'latitude' => 'Latitude',
            'keterangan' => 'Keterangan',
        ];
    }
}
