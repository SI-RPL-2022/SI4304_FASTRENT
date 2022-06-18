<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\MenuLinkSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="menu-link-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_menu_link') ?>

    <?= $form->field($model, 'menu_name') ?>

    <?= $form->field($model, 'menu_name_lang1') ?>

    <?= $form->field($model, 'menu_name_lang2') ?>

    <?= $form->field($model, 'url') ?>

    <?php // echo $form->field($model, 'is_active') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
