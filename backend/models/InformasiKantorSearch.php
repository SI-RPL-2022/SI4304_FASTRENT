<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\InformasiKantor;

/**
 * InformasiKantorSearch represents the model behind the search form of `backend\models\InformasiKantor`.
 */
class InformasiKantorSearch extends InformasiKantor
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_kantor', 'nama_kantor', 'lokasi', 'deskripsi'], 'safe'],
            [['jumlah_karyawan'], 'integer'],
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
        $query = InformasiKantor::find();

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
            'jumlah_karyawan' => $this->jumlah_karyawan,
        ]);

        $query->andFilterWhere(['like', 'id_kantor', $this->id_kantor])
            ->andFilterWhere(['like', 'nama_kantor', $this->nama_kantor])
            ->andFilterWhere(['like', 'lokasi', $this->lokasi])
            ->andFilterWhere(['like', 'deskripsi', $this->deskripsi]);

        return $dataProvider;
    }
}
