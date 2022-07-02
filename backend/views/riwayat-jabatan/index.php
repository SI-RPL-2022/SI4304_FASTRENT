<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\RiwayatJabatanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Riwayat Jabatan';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box">
     <div class="box-body riwayat-jabatan-index">


          <p>
               <?= Html::a('Tambah Riwayat Jabatan', ['create'], ['class' => 'btn btn-success']) ?>
          </p>

          <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

          <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
        'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                'id_pegawai',
                #'tanggal_mulai',
            'tahun_mulai',
            #'tanggal_berakhir',
            'tahun_berakhir',
            'nomor_sk',
            //'bukti_sk',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>


     </div>
</div>