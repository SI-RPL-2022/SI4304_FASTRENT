<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\RiwayatJabatan */

$this->title = 'Update Riwayat Jabatan';
$this->params['breadcrumbs'][] = ['label' => 'Riwayat Jabatan', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => 'Detail', 'url' => ['view', 'id' => $model->id_riwayat_jabatan]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="box">
	<div class="box-body riwayat-jabatan-update">

		
	    <?= $this->render('_form', [
	        'model' => $model,
	    ]) ?>

	</div>
</div>
