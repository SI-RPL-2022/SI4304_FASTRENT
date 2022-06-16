<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\RiwayatJabatan;

/**
 * RiwayatJabatanSearch represents the model behind the search form of `backend\models\RiwayatJabatan`.
 */
class RiwayatJabatanSearch extends RiwayatJabatan
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_riwayat_jabatan', 'id_pegawai', 'id_jabatan', 'id_kantor', 'tahun_mulai', 'tahun_berakhir'], 'integer'],
            [['tanggal_mulai', 'tanggal_berakhir', 'nomor_sk', 'bukti_sk'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = RiwayatJabatan::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_riwayat_jabatan' => $this->id_riwayat_jabatan,
            'id_pegawai' => $this->id_pegawai,
            'id_jabatan' => $this->id_jabatan,
            'id_kantor' => $this->id_kantor,
            'tanggal_mulai' => $this->tanggal_mulai,
            'tahun_mulai' => $this->tahun_mulai,
            'tanggal_berakhir' => $this->tanggal_berakhir,
            'tahun_berakhir' => $this->tahun_berakhir,
        ]);

        $query->andFilterWhere(['like', 'nomor_sk', $this->nomor_sk])
            ->andFilterWhere(['like', 'bukti_sk', $this->bukti_sk]);

        return $dataProvider;
    }
}
