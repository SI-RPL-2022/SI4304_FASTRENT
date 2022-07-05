<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\KompetensiJabatan;

/**
 * KompetensiJabatanSearch represents the model behind the search form of `backend\models\KompetensiJabatan`.
 */
class KompetensiJabatanSearch extends KompetensiJabatan
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_jabatan', 'jabatan', 'jenjang_jabatan', 'id_karyawan'], 'integer'],
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
        $query = KompetensiJabatan::find();

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
            'id_jabatan' => $this->id_jabatan,
            'jabatan' => $this->jabatan,
            'jenjang_jabatan' => $this->jenjang_jabatan,
            'id_karyawan' => $this->id_karyawan,
        ]);

        return $dataProvider;
    }
}
