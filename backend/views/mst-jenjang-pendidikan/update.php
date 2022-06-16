<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MstJenjangPendidikan */

$this->title = 'Update Mst Jenjang Pendidikan';
$this->params['breadcrumbs'][] = ['label' => 'Mst Jenjang Pendidikan', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => 'Detail', 'url' => ['view', 'id' => $model->id_mst_jenjang_pendidikan]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="box">
	<div class="box-body mst-jenjang-pendidikan-update">

		
	    <?= $this->render('_form', [
	        'model' => $model,
	    ]) ?>

	</div>
</div>
