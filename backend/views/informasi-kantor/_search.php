<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\InformasiKantorSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="informasi-kantor-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_kantor') ?>

    <?= $form->field($model, 'nama_kantor') ?>

    <?= $form->field($model, 'lokasi') ?>

    <?= $form->field($model, 'jumlah_karyawan') ?>

    <?= $form->field($model, 'deskripsi') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
