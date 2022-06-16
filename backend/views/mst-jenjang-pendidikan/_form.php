<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\MstJenjangPendidikan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="mst-jenjang-pendidikan-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'jenjang_pendidikan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'keterangan')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
