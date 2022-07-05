<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\KompetensiJabatanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kompetensi Jabatan';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box">
    <div class="box-body kompetensi-jabatan-index">

        
        <p>
            <?= Html::a('Tambah Kompetensi Jabatan', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

                <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    
            <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
        'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                'jabatan',
            'jenjang_jabatan',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    
    
    </div>
</div>
