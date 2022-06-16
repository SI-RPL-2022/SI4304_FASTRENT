<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\RiwayatJabatanSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="riwayat-jabatan-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_riwayat_jabatan') ?>

    <?= $form->field($model, 'id_pegawai') ?>

    <?= $form->field($model, 'id_jabatan') ?>

    <?= $form->field($model, 'id_kantor') ?>

    <?= $form->field($model, 'tanggal_mulai') ?>

    <?php // echo $form->field($model, 'tahun_mulai') ?>

    <?php // echo $form->field($model, 'tanggal_berakhir') ?>

    <?php // echo $form->field($model, 'tahun_berakhir') ?>

    <?php // echo $form->field($model, 'nomor_sk') ?>

    <?php // echo $form->field($model, 'bukti_sk') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
