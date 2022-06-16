<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Kantor */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="kantor-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nama_kantor')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'alamat')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'id_kabupaten')->textInput() ?>

    <?= $form->field($model, 'id_provinsi')->textInput() ?>

    <?= $form->field($model, 'id_negara')->textInput() ?>

    <?= $form->field($model, 'longitude')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'latitude')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'keterangan')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
