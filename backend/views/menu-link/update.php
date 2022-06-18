<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MenuLink */

$this->title = 'Update Menu Link';
$this->params['breadcrumbs'][] = ['label' => 'Menu Link', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => 'Detail', 'url' => ['view', 'id' => $model->id_menu_link]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="box">
	<div class="box-body menu-link-update">

		
	    <?= $this->render('_form', [
	        'model' => $model,
	    ]) ?>

	</div>
</div>
