<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\PreferensiPegawai */

$this->title = 'Tambah Preferensi Pegawai';
$this->params['breadcrumbs'][] = ['label' => 'Preferensi Pegawai', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box">
	<div class="box-body preferensi-pegawai-create">

		
	    <?= $this->render('_form', [
	        'model' => $model,
	    ]) ?>

	</div>
</div>
