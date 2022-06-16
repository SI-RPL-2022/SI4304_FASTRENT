<?php

use yii\helpers\Html;

/* @var $this \yii\web\View */
/* @var $content string */

use backend\models\AppSettingSearch;
use yii\helpers\Url;

$appName = AppSettingSearch::getValueByKey("APP-NAME-SINGKAT");
$appNameSingkat = AppSettingSearch::getValueByKey("APP-NAME-SINGKATAN");
?>

<header class="main-header bg-g">

    <?= Html::a('<span class="logo-mini"><b>'.$appNameSingkat.'</b></span><span class="logo-lg">' . $appName . '</span>', Yii::$app->homeUrl, ['class' => 'logo']) ?>

    <nav class="navbar navbar-static-top" role="navigation">

        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">

            <ul class="nav navbar-nav">
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="<?= $directoryAsset ?>/img/avatar.png" class="user-image" alt="User Image"/>
                        <span class="hidden-xs"><?= Yii::$app->user->isGuest ? ('Guest') :
                                (Yii::$app->user->identity->full_name) ?>
                        </span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <img src="<?= $directoryAsset ?>/img/avatar.png" class="img-circle"
                                 alt="User Image"/>
                            <p>
                                <?= Yii::$app->user->isGuest ? ('Guest') : (Yii::$app->user->identity->full_name) ?>
                                <small><?= Yii::$app->user->isGuest ? ('Guest') : (Yii::$app->user->identity->email) ?></small>
                            </p>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <?= Html::a(
                                    'Sign out',
                                    ['/site/logout'],
                                    ['data-method' => 'post', 'class' => 'btn btn-default btn-flat']
                                ) ?>
                            </div>
                            <div class="pull-right">
                                <?= Html::a(
                                    'Change Password',
                                    ['/site/change-password'],
                                    ['data-method' => 'get', 'class' => 'btn btn-default btn-flat']
                                ) ?>
                            </div>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
    </nav>
</header>
