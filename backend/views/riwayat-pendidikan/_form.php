<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\RiwayatPendidikan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="riwayat-pendidikan-form">

     <?php $form = ActiveForm::begin(); ?>

     <?= $form->field($model, 'id_pegawai')->textInput() ?>

     <?= $form->field($model, 'id_jenjang_pendidikan')->textInput() ?>

     <?= $form->field($model, 'nama_sekolah')->textInput(['maxlength' => true]) ?>

     <?= $form->field($model, 'id_sekolah')->textInput() ?>

     <?= $form->field($model, 'tahun_masuk')->textInput() ?>

     <?= $form->field($model, 'tahun_lulus')->textInput() ?>

     <?= $form->field($model, 'bidang')->textInput(['maxlength' => true]) ?>

     <?= $form->field($model, 'gpa')->textInput() ?>

     <?= $form->field($model, 'keterangan')->textInput(['maxlength' => true]) ?>

     <div class="form-group">
          <?= Html::a('<< Back', ['index'], ['class' => 'btn btn-warning']) ?>
          <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>

     </div>

     <?php ActiveForm::end(); ?>

</div>