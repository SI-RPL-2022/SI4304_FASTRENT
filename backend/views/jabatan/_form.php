<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Jabatan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="jabatan-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_struktur_organisasi')->textInput() ?>

    <?= $form->field($model, 'kode_jabatan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nama_jabatan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'keterangan')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
