<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\RiwayatJabatan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="riwayat-jabatan-form">

     <?php $form = ActiveForm::begin(); ?>

     <?= $form->field($model, 'id_pegawai')->textInput() ?>

     <?= $form->field($model, 'id_jabatan')->textInput() ?>

     <?= $form->field($model, 'id_kantor')->textInput() ?>

     <?= $form->field($model, 'tanggal_mulai')->textInput() ?>

     <?= $form->field($model, 'tahun_mulai')->textInput() ?>

     <?= $form->field($model, 'tanggal_berakhir')->textInput() ?>

     <?= $form->field($model, 'tahun_berakhir')->textInput() ?>

     <?= $form->field($model, 'nomor_sk')->textInput(['maxlength' => true]) ?>

     <?= $form->field($model, 'bukti_sk')->textInput(['maxlength' => true]) ?>

     <div class="form-group">
          <?= Html::a('<< Back', ['index'], ['class' => 'btn btn-warning']) ?>
          <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>
     </div>

     <?php ActiveForm::end(); ?>

</div>