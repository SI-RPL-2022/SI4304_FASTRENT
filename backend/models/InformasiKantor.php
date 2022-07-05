<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "informasi_kantor".
 *
 * @property string $id_kantor
 * @property string $nama_kantor
 * @property string $lokasi
 * @property int $jumlah_karyawan
 * @property string $deskripsi
 */
class InformasiKantor extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'informasi_kantor';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_kantor', 'nama_kantor', 'lokasi', 'jumlah_karyawan', 'deskripsi'], 'required'],
            [['jumlah_karyawan'], 'integer'],
            [['id_kantor', 'nama_kantor', 'lokasi', 'deskripsi'], 'string', 'max' => 255],
            [['id_kantor'], 'unique'],
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
            'lokasi' => 'Lokasi',
            'jumlah_karyawan' => 'Jumlah Karyawan',
            'deskripsi' => 'Deskripsi',
        ];
    }
}
