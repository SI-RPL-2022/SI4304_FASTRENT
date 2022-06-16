<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\RiwayatPendidikan */

//$this->title = $model->id_riwayat_pendidikan;
$this->title = 'Detail '.'Riwayat Pendidikan';
$this->params['breadcrumbs'][] = ['label' => 'Riwayat Pendidikan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="box">
    <div class="box-body riwayat-pendidikan-view">

                <p>
            <?= Html::a('Update', ['update', 'id' => $model->id_riwayat_pendidikan], ['class' => 'btn btn-primary']) ?>
            <?= Html::a('Delete', ['delete', 'id' => $model->id_riwayat_pendidikan], [
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
                'nama_sekolah',
            'tahun_masuk',
            'tahun_lulus',
            'bidang',
            'gpa',
            'keterangan',
            ],
        ]) ?>

    </div>
</div>
