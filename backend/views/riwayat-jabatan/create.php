<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\RiwayatJabatan */

$this->title = 'Tambah Riwayat Jabatan';
$this->params['breadcrumbs'][] = ['label' => 'Riwayat Jabatan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box">
	<div class="box-body riwayat-jabatan-create">

		
	    <?= $this->render('_form', [
	        'model' => $model,
	    ]) ?>

	</div>
</div>
