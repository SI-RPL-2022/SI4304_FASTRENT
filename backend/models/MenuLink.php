<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "menu_link".
 *
 * @property int $id_menu_link
 * @property string $menu_name
 * @property string|null $menu_name_lang1
 * @property string|null $menu_name_lang2
 * @property string $url
 * @property int $is_active
 */
class MenuLink extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'menu_link';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_menu_link', 'menu_name', 'url', 'is_active'], 'required'],
            [['id_menu_link', 'is_active'], 'integer'],
            [['menu_name'], 'string', 'max' => 100],
            [['menu_name_lang1', 'menu_name_lang2'], 'string', 'max' => 50],
            [['url'], 'string', 'max' => 250],
            [['id_menu_link'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_menu_link' => 'Id Menu Link',
            'menu_name' => 'Menu Name',
            'menu_name_lang1' => 'Menu Name Lang1',
            'menu_name_lang2' => 'Menu Name Lang2',
            'url' => 'Url',
            'is_active' => 'Is Active',
        ];
    }
}
