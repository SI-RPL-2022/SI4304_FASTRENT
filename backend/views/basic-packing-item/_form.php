<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\BasicPackingItem */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="basic-packing-item-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_basic_packing')->textInput() ?>

    <?= $form->field($model, 'id_material_support')->textInput() ?>

    <?= $form->field($model, 'jumlah')->textInput() ?>

    <?= $form->field($model, 'keterangan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'created_id_user')->textInput() ?>

    <?= $form->field($model, 'created_date')->textInput() ?>

    <?= $form->field($model, 'created_ip_address')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
