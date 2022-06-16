<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "riwayat_pendidikan".
 *
 * @property int $id_riwayat_pendidikan
 * @property int $id_pegawai
 * @property int $id_jenjang_pendidikan
 * @property string $nama_sekolah
 * @property int|null $id_sekolah
 * @property int|null $tahun_masuk
 * @property int|null $tahun_lulus
 * @property string|null $bidang
 * @property float|null $gpa
 * @property string|null $keterangan
 */
class RiwayatPendidikan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'riwayat_pendidikan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_pegawai', 'id_jenjang_pendidikan', 'nama_sekolah'], 'required'],
            [['id_pegawai', 'id_jenjang_pendidikan', 'id_sekolah', 'tahun_masuk', 'tahun_lulus'], 'integer'],
            [['gpa'], 'number'],
            [['nama_sekolah', 'bidang', 'keterangan'], 'string', 'max' => 250],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_riwayat_pendidikan' => 'Id Riwayat Pendidikan',
            'id_pegawai' => 'Id Pegawai',
            'id_jenjang_pendidikan' => 'Id Jenjang Pendidikan',
            'nama_sekolah' => 'Nama Sekolah',
            'id_sekolah' => 'Id Sekolah',
            'tahun_masuk' => 'Tahun Masuk',
            'tahun_lulus' => 'Tahun Lulus',
            'bidang' => 'Bidang',
            'gpa' => 'Gpa',
            'keterangan' => 'Keterangan',
        ];
    }
}
