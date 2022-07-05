<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\InformasiKantor */

$this->title = 'Tambah Informasi Kantor';
$this->params['breadcrumbs'][] = ['label' => 'Informasi Kantor', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box">
	<div class="box-body informasi-kantor-create">

		
	    <?= $this->render('_form', [
	        'model' => $model,
	    ]) ?>

	</div>
</div>
