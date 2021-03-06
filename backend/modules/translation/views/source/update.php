<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model yeesoft\translation\models\MessageSource */

$this->title = Yii::t('yee/translation', 'Update Message Source');
$this->params['breadcrumbs'][] = ['label' => Yii::t('yee/translation', 'Message Translation'), 'url' => ['/translation/default/index']];
$this->params['breadcrumbs'][] = 'Update Message Source';
?>
<div class="message-source-update">
    <h3 class="lte-hide-title"><?= Html::encode($this->title) ?></h3>
    <?= $this->render('_form', compact('model')) ?>
</div>