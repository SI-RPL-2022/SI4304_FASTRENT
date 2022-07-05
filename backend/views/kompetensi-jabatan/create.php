<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\KompetensiJabatan */

$this->title = 'Tambah Kompetensi Jabatan';
$this->params['breadcrumbs'][] = ['label' => 'Kompetensi Jabatan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box">
	<div class="box-body kompetensi-jabatan-create">

		
	    <?= $this->render('_form', [
	        'model' => $model,
	    ]) ?>

	</div>
</div>
