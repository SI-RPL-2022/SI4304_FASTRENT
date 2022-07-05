<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\InformasiKantor */

//$this->title = $model->id_kantor;
$this->title = 'Detail '.'Informasi Kantor';
$this->params['breadcrumbs'][] = ['label' => 'Informasi Kantor', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="box">
     <div class="box-body informasi-kantor-view">

          <p>
               <?= Html::a('<< Back', ['index'], ['class' => 'btn btn-warning']) ?>
               <?= Html::a('Update', ['update', 'id' => $model->id_kantor], ['class' => 'btn btn-primary']) ?>
               <?= Html::a('Delete', ['delete', 'id' => $model->id_kantor], [
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
                'nama_kantor',
            'lokasi',
            'jumlah_karyawan',
            'deskripsi',
            ],
        ]) ?>

     </div>
</div>