<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\KantorSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kantor';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box">
    <div class="box-body kantor-index">

        
        <p>
            <?= Html::a('Tambah Kantor', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

                <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    
            <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
        'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                'nama_kantor',
            'alamat',
            'longitude',
            'latitude',
            'keterangan',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    
    
    </div>
</div>
