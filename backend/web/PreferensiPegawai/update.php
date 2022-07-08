<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\PreferensiPegawai */

$this->title = 'Update Preferensi Pegawai';
$this->params['breadcrumbs'][] = ['label' => 'Preferensi Pegawai', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => 'Detail', 'url' => ['view', 'id' => $model->id_pegawai]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="box">
	<div class="box-body preferensi-pegawai-update">

		
	    <?= $this->render('_form', [
	        'model' => $model,
	    ]) ?>

	</div>
</div>
