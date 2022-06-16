<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\MstJenjangPendidikan */

//$this->title = $model->id_mst_jenjang_pendidikan;
$this->title = 'Detail '.'Mst Jenjang Pendidikan';
$this->params['breadcrumbs'][] = ['label' => 'Mst Jenjang Pendidikan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="box">
    <div class="box-body mst-jenjang-pendidikan-view">

                <p>
            <?= Html::a('Update', ['update', 'id' => $model->id_mst_jenjang_pendidikan], ['class' => 'btn btn-primary']) ?>
            <?= Html::a('Delete', ['delete', 'id' => $model->id_mst_jenjang_pendidikan], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => 'Are you sure you want to delete this item?',
                    'method' => 'post',
                ],
            ]) ?>
        </p>

        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                'jenjang_pendidikan',
            'keterangan',
            ],
        ]) ?>

    </div>
</div>
