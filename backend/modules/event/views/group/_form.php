<?php

use yeesoft\widgets\ActiveForm;
use backend\modules\event\models\EventGroup;
use yeesoft\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\modules\event\models\EventGroup */
/* @var $form yeesoft\widgets\ActiveForm */
?>

<div class="event-group-form">

    <?php 
    $form = ActiveForm::begin([
            'id' => 'event-group-form',
            'validateOnBlur' => false,
        ])
    ?>

    <div class="row">
        <div class="col-md-9">

            <div class="panel panel-default">
                <div class="panel-body">
                    
                    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

                    <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>

                     <?= $form->field($model, 'users_list')->widget(nex\chosen\Chosen::className(), [
                            'items' => backend\modules\event\models\EventGroup::getEventUsersList(),
                            'multiple' => true,
                            'placeholder' => Yii::t('yee/event', 'Select Users...'),
                        ])
                    ?>
                    
                </div>

            </div>
        </div>

        <div class="col-md-3">

            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="record-info">
                        <?php if (!$model->isNewRecord): ?>

                            <div class="form-group clearfix">
                                <label class="control-label" style="float: left; padding-right: 5px;">
                             <?= $model->attributeLabels()['created_at'] ?> :
                                </label>
                                <span><?= $model->createdDatetime ?></span>
                            </div>

                            <div class="form-group clearfix">
                                <label class="control-label" style="float: left; padding-right: 5px;">
                            <?= $model->attributeLabels()['updated_at'] ?> :
                                </label>
                                <span><?= $model->updatedDatetime ?></span>
                            </div>
                            
                        <?php endif; ?>
                        
                        <?= $form->field($model, 'number')->textInput() ?>
                    
                        <?= $form->field($model, 'programm_id')
                            ->dropDownList(backend\modules\event\models\EventProgramm::getProgrammList(), [
                                'prompt' => Yii::t('yee/event', 'Select Programm...')
                            ])->label(Yii::t('yee/event', 'Programm Name'));
                        ?>
                        <div class="form-group clearfix">
                            <label class="control-label" style="float: left; padding-right: 5px;"><?=  $model->attributeLabels()['id'] ?>: </label>
                            <span><?=  $model->id ?></span>
                        </div>

                        <div class="form-group">
                            <?php  if ($model->isNewRecord): ?>
                                <?= Html::submitButton(Yii::t('yee', 'Create'), ['class' => 'btn btn-primary']) ?>
                                <?= Html::a(Yii::t('yee', 'Cancel'), ['/event/group/index'], ['class' => 'btn btn-default']) ?>
                            <?php  else: ?>
                                <?= Html::submitButton(Yii::t('yee', 'Save'), ['class' => 'btn btn-primary']) ?>
                                <?= Html::a(Yii::t('yee', 'Delete'),
                                    ['/event/group/delete', 'id' => $model->id], [
                                    'class' => 'btn btn-default',
                                    'data' => [
                                        'confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                                        'method' => 'post',
                                    ],
                                ]) ?>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <?php  ActiveForm::end(); ?>

</div>