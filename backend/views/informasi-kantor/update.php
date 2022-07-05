<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\InformasiKantor */

$this->title = 'Update Informasi Kantor';
$this->params['breadcrumbs'][] = ['label' => 'Informasi Kantor', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => 'Detail', 'url' => ['view', 'id' => $model->id_kantor]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="box">
	<div class="box-body informasi-kantor-update">

		
	    <?= $this->render('_form', [
	        'model' => $model,
	    ]) ?>

	</div>
</div>
