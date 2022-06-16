<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MstJenjangPendidikan */

$this->title = 'Tambah Mst Jenjang Pendidikan';
$this->params['breadcrumbs'][] = ['label' => 'Mst Jenjang Pendidikan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box">
	<div class="box-body mst-jenjang-pendidikan-create">

		
	    <?= $this->render('_form', [
	        'model' => $model,
	    ]) ?>

	</div>
</div>
