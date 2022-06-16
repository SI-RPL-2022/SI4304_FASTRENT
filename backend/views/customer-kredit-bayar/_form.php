<?php

use yii\helpers\Html;
//use yii\widgets\ActiveForm;
use yii\bootstrap\ActiveForm;
use dosamigos\datepicker\DatePicker;


/* @var $this yii\web\View */
/* @var $model backend\models\CustomerKreditBayar */
/* @var $form yii\widgets\ActiveForm */
?>

<style>
    div.required label.control-label:after {
        content: " *";
        color: red;
    }
</style>

<?php
//CSS Ini digunakan untuk overide jarak antar form biar tidak terlalu jauh
?>
<style>
    .form-group {
        margin-bottom: 0px;
    }
</style>

<div class="customer-kredit-bayar-form">

    <?php $form = ActiveForm::begin([
        'layout' => 'horizontal',
        'options' => ['encrypt' => 'multipart/form-data'], //Tambahkan ini untuk fitur upload
        'fieldConfig' => [
            'horizontalCssClasses' => [
                'label' => 'col-lg-2',
                'offset' => 'col-lg-offset-2',
                'wrapper' => 'col-lg-10',
            ],
        ],
    ]); ?>

    <?php
    //Mengambil list dari tabel sebelah (material)
    $listMaterial = \yii\helpers\ArrayHelper::map(\backend\models\Customer::find()->orderBy([
        'nama_customer' => SORT_ASC
    ])->asArray()->all(), 'id_customer', 'nama_customer');
    ?>

    <?= $form->field($model, 'id_customer')->dropDownList(
        $listMaterial,
        ['prompt' => 'Pilih Customer ...']
    ); ?>

    <?php
    echo $form->field($model, 'tanggal_bayar')->widget(datepicker::className(), [
        'model' => $model,
        'attribute' => 'date',
        'template' => '{addon}{input}',
        'options' => ['readonly' => 'readonly'],
        'clientOptions' => [
            'autoclose' => true,
            'format' => 'yyyy-mm-dd',
            'endDate' => date('Y-m-d'),
        ]
    ]);
    ?>

    <?= $form->field($model, 'cara_bayar')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'jumlah_bayar')->textInput() ?>

    <?php
    //Mengambil list dari tabel sebelah (material)
    $listMaterial = \yii\helpers\ArrayHelper::map(\backend\models\BankPembayaran::find()->orderBy([
        'nama_bank' => SORT_ASC
    ])->asArray()->all(), 'id_bank_pembayaran', 'nama_bank');
    ?>

    <?= $form->field($model, 'id_bank_pembayaran')->dropDownList(
        $listMaterial,
        ['prompt' => 'Pilih Bank ...']
    ); ?>

    <?php
    //Mengambil list dari tabel sebelah (material)
    $listMaterial = \yii\helpers\ArrayHelper::map(\backend\models\SalesOrder::find()->orderBy([
        'id_sales_order' => SORT_ASC
    ])->asArray()->all(), 'id_sales_order', 'id_sales_order');
    ?>

    <?= $form->field($model, 'id_sales_order')->dropDownList(
        $listMaterial,
        ['prompt' => 'Pilih Sales Order ...']
    ); ?>

    <?= $form->field($model, 'status_pembayaran')->textInput(['maxlength' => true]) ?>

    <?php /* $form->field($model, 'created_date')->textInput() ?>

    <?= $form->field($model, 'created_user_id')->textInput() ?>

    <?= $form->field($model, 'created_ip_address')->textInput(['maxlength' => true]) */ ?>

    <div class="box-footer clearfix">
        <div class="form-group">
            <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>

</div>