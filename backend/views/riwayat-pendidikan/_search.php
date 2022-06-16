<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\RiwayatPendidikanSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="riwayat-pendidikan-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_riwayat_pendidikan') ?>

    <?= $form->field($model, 'id_pegawai') ?>

    <?= $form->field($model, 'id_jenjang_pendidikan') ?>

    <?= $form->field($model, 'nama_sekolah') ?>

    <?= $form->field($model, 'id_sekolah') ?>

    <?php // echo $form->field($model, 'tahun_masuk') ?>

    <?php // echo $form->field($model, 'tahun_lulus') ?>

    <?php // echo $form->field($model, 'bidang') ?>

    <?php // echo $form->field($model, 'gpa') ?>

    <?php // echo $form->field($model, 'keterangan') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
