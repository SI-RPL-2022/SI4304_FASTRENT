<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\MstJenjangPendidikan;

/**
 * MstJenjangPendidikanSearch represents the model behind the search form of `backend\models\MstJenjangPendidikan`.
 */
class MstJenjangPendidikanSearch extends MstJenjangPendidikan
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_mst_jenjang_pendidikan'], 'integer'],
            [['jenjang_pendidikan', 'keterangan'], 'safe'],
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
        $query = MstJenjangPendidikan::find();

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
            'id_mst_jenjang_pendidikan' => $this->id_mst_jenjang_pendidikan,
        ]);

        $query->andFilterWhere(['like', 'jenjang_pendidikan', $this->jenjang_pendidikan])
            ->andFilterWhere(['like', 'keterangan', $this->keterangan]);

        return $dataProvider;
    }
}
