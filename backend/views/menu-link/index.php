<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\MenuLinkSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Menu Link';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box">
    <div class="box-body menu-link-index">

        
        <p>
            <?= Html::a('Tambah Menu Link', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

                <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    
            <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
        'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                'menu_name',
            'menu_name_lang1',
            'menu_name_lang2',
            'url:url',
            'is_active',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    
    
    </div>
</div>
