<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\InformasiKantorSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Informasi Kantor';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box">
    <div class="box-body informasi-kantor-index">

        
        <p>
            <?= Html::a('Tambah Informasi Kantor', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

                <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    
            <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
        'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                'nama_kantor',
            'lokasi',
            'jumlah_karyawan',
            'deskripsi',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    
    
    </div>
</div>
