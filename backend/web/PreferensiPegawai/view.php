<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\PreferensiPegawai */

//$this->title = $model->id_pegawai;
$this->title = 'Detail '.'Preferensi Pegawai';
$this->params['breadcrumbs'][] = ['label' => 'Preferensi Pegawai', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="box">
    <div class="box-body preferensi-pegawai-view">

                <p>
            <?= Html::a('Update', ['update', 'id' => $model->id_pegawai], ['class' => 'btn btn-primary']) ?>
            <?= Html::a('Delete', ['delete', 'id' => $model->id_pegawai], [
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
                'Nama',
            'jenis_kelamin',
            'umur',
            'jabatan',
            'penilaian_kinerja',
            ],
        ]) ?>

    </div>
</div>
