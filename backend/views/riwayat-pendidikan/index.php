<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\RiwayatPendidikanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Riwayat Pendidikan';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box">
    <div class="box-body riwayat-pendidikan-index">

        
        <p>
            <?= Html::a('Tambah Riwayat Pendidikan', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

                <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    
            <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
        'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                'nama_sekolah',
            'tahun_masuk',
            'tahun_lulus',
            'bidang',
            'gpa',
            //'keterangan',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    
    
    </div>
</div>
