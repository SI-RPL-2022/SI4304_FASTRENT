<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\RiwayatJabatan */

//$this->title = $model->id_riwayat_jabatan;
$this->title = 'Detail '.'Riwayat Jabatan';
$this->params['breadcrumbs'][] = ['label' => 'Riwayat Jabatan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="box">
    <div class="box-body riwayat-jabatan-view">

                <p>
            <?= Html::a('Update', ['update', 'id' => $model->id_riwayat_jabatan], ['class' => 'btn btn-primary']) ?>
            <?= Html::a('Delete', ['delete', 'id' => $model->id_riwayat_jabatan], [
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
                'tanggal_mulai',
            'tahun_mulai',
            'tanggal_berakhir',
            'tahun_berakhir',
            'nomor_sk',
            'bukti_sk',
            ],
        ]) ?>

    </div>
</div>
