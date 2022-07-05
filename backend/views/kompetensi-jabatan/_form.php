<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\KompetensiJabatan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="kompetensi-jabatan-form">

     <?php $form = ActiveForm::begin(); ?>

     <?= $form->field($model, 'id_jabatan')->textInput() ?>

     <?= $form->field($model, 'jabatan')->textInput() ?>

     <?= $form->field($model, 'jenjang_jabatan')->textInput() ?>

     <?= $form->field($model, 'id_karyawan')->textInput() ?>

     <div class="form-group">
          <?= Html::a('<< Back', ['index'], ['class' => 'btn btn-warning']) ?>
          <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>
     </div>

     <?php ActiveForm::end(); ?>

</div>