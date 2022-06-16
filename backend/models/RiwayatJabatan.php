<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "riwayat_jabatan".
 *
 * @property int $id_riwayat_jabatan
 * @property int $id_pegawai
 * @property int $id_jabatan
 * @property int $id_kantor
 * @property string $tanggal_mulai
 * @property int|null $tahun_mulai
 * @property string|null $tanggal_berakhir
 * @property int|null $tahun_berakhir
 * @property string|null $nomor_sk
 * @property string|null $bukti_sk
 */
class RiwayatJabatan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'riwayat_jabatan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_pegawai', 'id_jabatan', 'tanggal_mulai'], 'required'],
            [['id_pegawai', 'id_jabatan', 'id_kantor', 'tahun_mulai', 'tahun_berakhir'], 'integer'],
            [['tanggal_mulai', 'tanggal_berakhir'], 'safe'],
            [['nomor_sk', 'bukti_sk'], 'string', 'max' => 250],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_riwayat_jabatan' => 'Id Riwayat Jabatan',
            'id_pegawai' => 'Id Pegawai',
            'id_jabatan' => 'Id Jabatan',
            'id_kantor' => 'Id Kantor',
            'tanggal_mulai' => 'Tanggal Mulai',
            'tahun_mulai' => 'Tahun Mulai',
            'tanggal_berakhir' => 'Tanggal Berakhir',
            'tahun_berakhir' => 'Tahun Berakhir',
            'nomor_sk' => 'Nomor Sk',
            'bukti_sk' => 'Bukti Sk',
        ];
    }
}
