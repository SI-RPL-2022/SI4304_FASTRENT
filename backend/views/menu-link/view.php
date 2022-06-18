<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\MenuLink */

//$this->title = $model->id_menu_link;
$this->title = 'Detail '.'Menu Link';
$this->params['breadcrumbs'][] = ['label' => 'Menu Link', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="box">
    <div class="box-body menu-link-view">

                <p>
            <?= Html::a('Update', ['update', 'id' => $model->id_menu_link], ['class' => 'btn btn-primary']) ?>
            <?= Html::a('Delete', ['delete', 'id' => $model->id_menu_link], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => 'Are you sure you want to delete this item?',
                    'method' => 'post',
                ],
            ]) ?>
        </p>

        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                'menu_name',
            'menu_name_lang1',
            'menu_name_lang2',
            'url:url',
            'is_active',
            ],
        ]) ?>

    </div>
</div>
