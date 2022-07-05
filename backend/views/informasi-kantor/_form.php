<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\InformasiKantor */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="informasi-kantor-form">

     <?php $form = ActiveForm::begin(); ?>

     <?= $form->field($model, 'id_kantor')->textInput(['maxlength' => true]) ?>

     <?= $form->field($model, 'nama_kantor')->textInput(['maxlength' => true]) ?>

     <?= $form->field($model, 'lokasi')->textInput(['maxlength' => true]) ?>

     <?= $form->field($model, 'jumlah_karyawan')->textInput() ?>

     <?= $form->field($model, 'deskripsi')->textInput(['maxlength' => true]) ?>

     <div class="form-group">
          <?= Html::a('<< Back', ['index'], ['class' => 'btn btn-warning']) ?>
          <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>
     </div>

     <?php ActiveForm::end(); ?>

</div>