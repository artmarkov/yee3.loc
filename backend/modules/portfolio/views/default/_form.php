<?php

use yeesoft\widgets\ActiveForm;
use backend\modules\portfolio\models\Items;
use yeesoft\helpers\Html;
use yii\web\JsExpression;

/* @var $this yii\web\View */
/* @var $model backend\modules\portfolio\models\Items */
/* @var $form yeesoft\widgets\ActiveForm */

?>

<div class="items-form">

    <?php
    $form = ActiveForm::begin([
                'id' => 'items-form',
                'validateOnBlur' => false,
            ])
    ?>
    <?php
    $JSInsertLink = <<<EOF
        function(e, data) {
                      
            // console.log(data);

        $.ajax({
               url: '/admin/media/default/paste-link',
               type: 'POST',
               data: {id : data.id},
               success: function (link) {
                  // console.log(link);

              document.getElementById("items-link_href").value = link; 
               },
               error: function () {
                   alert('Error!!!');
               }
           });

            $(".items-thumbnail").show();

       }
EOF;
    ?>
    <div class="row">
        <div class="col-md-9">
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <?= $form->field($model->loadDefaultValues(), 'status')->dropDownList(Items::getStatusList()) ?>

                        <?= $form->field($model, 'category_id')
                                ->dropDownList(backend\modules\portfolio\models\Category::getCategories(), [
                                    'prompt' => Yii::t('yee/section', 'Select Categories...'),
                                    'id' => 'categories_id'
                                ])->label(Yii::t('yee/section', 'Portfolio Category'));
                        ?>

                        <?= $form->field($model, 'link_href')->textInput(['maxlength' => true]) ?>


                    </div>
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
                                              
                        <?= $form->field($model, 'thumbnail')->widget(backend\modules\media\widgets\FileInput::className(), [
                            'name' => 'image',
                            'buttonTag' => 'button',
                            'buttonName' => Yii::t('yee', 'Browse'),
                            'buttonOptions' => ['class' => 'btn btn-default btn-file-input'],
                            'options' => ['class' => 'form-control'],
                            'template' => '<div class="items-thumbnail thumbnail"></div><div class="input-group">{input}<span class="input-group-btn">{button}</span></div>',
                            'thumb' => $this->context->module->thumbnailSize,
                            'imageContainer' => '.items-thumbnail',
                            'pasteData' => backend\modules\media\widgets\FileInput::DATA_URL,
                            'callbackBeforeInsert' => new JsExpression($JSInsertLink), 
                        ])
                        ?>

                        <div class="form-group">
                            <?php if ($model->isNewRecord): ?>
                                <?= Html::submitButton(Yii::t('yee', 'Create'), ['class' => 'btn btn-primary']) ?>
                                <?= Html::a(Yii::t('yee', 'Cancel'), ['/portfolio/default/index'], ['class' => 'btn btn-default']) ?>
                            <?php else: ?>
                                <div class="form-group clearfix">
                                    <label class="control-label" style="float: left; padding-right: 5px;"><?= $model->attributeLabels()['id'] ?>: </label>
                                    <span><?= $model->id ?></span>
                                </div>
                                <?= Html::submitButton(Yii::t('yee', 'Save'), ['class' => 'btn btn-primary']) ?>
                                <?=
                                Html::a(Yii::t('yee', 'Delete'), ['/portfolio/default/delete', 'id' => $model->id], [
                                    'class' => 'btn btn-default',
                                    'data' => [
                                        'confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                                        'method' => 'post',
                                    ],
                                ])
                                ?>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <?php ActiveForm::end(); ?>

</div>
<?php

$js = <<<JS
    var thumbnail = $("#items-thumbnail").val();
    if(thumbnail.length == 0){
        $('.items-thumbnail').hide();
    } else {
        $('.items-thumbnail').html('<img src="' + thumbnail + '" />');
    }
JS;

$this->registerJs($js, yii\web\View::POS_READY);
?>