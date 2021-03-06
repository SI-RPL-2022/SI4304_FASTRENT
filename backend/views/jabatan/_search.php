<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\JabatanSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="jabatan-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_jabatan') ?>

    <?= $form->field($model, 'id_struktur_organisasi') ?>

    <?= $form->field($model, 'kode_jabatan') ?>

    <?= $form->field($model, 'nama_jabatan') ?>

    <?= $form->field($model, 'keterangan') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
