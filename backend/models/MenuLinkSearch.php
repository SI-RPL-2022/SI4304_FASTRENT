<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\MenuLink;

/**
 * MenuLinkSearch represents the model behind the search form of `backend\models\MenuLink`.
 */
class MenuLinkSearch extends MenuLink
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_menu_link', 'is_active'], 'integer'],
            [['menu_name', 'menu_name_lang1', 'menu_name_lang2', 'url'], 'safe'],
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
        $query = MenuLink::find();

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
            'id_menu_link' => $this->id_menu_link,
            'is_active' => $this->is_active,
        ]);

        $query->andFilterWhere(['like', 'menu_name', $this->menu_name])
            ->andFilterWhere(['like', 'menu_name_lang1', $this->menu_name_lang1])
            ->andFilterWhere(['like', 'menu_name_lang2', $this->menu_name_lang2])
            ->andFilterWhere(['like', 'url', $this->url]);

        return $dataProvider;
    }
}
