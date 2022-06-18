<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\MenuLink */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="menu-link-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_menu_link')->textInput() ?>

    <?= $form->field($model, 'menu_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'menu_name_lang1')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'menu_name_lang2')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'url')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'is_active')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
