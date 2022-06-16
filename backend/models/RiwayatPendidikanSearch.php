<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\RiwayatPendidikan;

/**
 * RiwayatPendidikanSearch represents the model behind the search form of `backend\models\RiwayatPendidikan`.
 */
class RiwayatPendidikanSearch extends RiwayatPendidikan
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_riwayat_pendidikan', 'id_pegawai', 'id_jenjang_pendidikan', 'id_sekolah', 'tahun_masuk', 'tahun_lulus'], 'integer'],
            [['nama_sekolah', 'bidang', 'keterangan'], 'safe'],
            [['gpa'], 'number'],
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
        $query = RiwayatPendidikan::find();

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
            'id_riwayat_pendidikan' => $this->id_riwayat_pendidikan,
            'id_pegawai' => $this->id_pegawai,
            'id_jenjang_pendidikan' => $this->id_jenjang_pendidikan,
            'id_sekolah' => $this->id_sekolah,
            'tahun_masuk' => $this->tahun_masuk,
            'tahun_lulus' => $this->tahun_lulus,
            'gpa' => $this->gpa,
        ]);

        $query->andFilterWhere(['like', 'nama_sekolah', $this->nama_sekolah])
            ->andFilterWhere(['like', 'bidang', $this->bidang])
            ->andFilterWhere(['like', 'keterangan', $this->keterangan]);

        return $dataProvider;
    }
}
