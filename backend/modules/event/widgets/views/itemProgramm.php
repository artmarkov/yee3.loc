<?php

use yeesoft\widgets\ActiveForm;
use yeesoft\helpers\Html;
use kartik\select2\Select2;

?>
<?php $form = ActiveForm::begin(); ?>

<div class="works-author-widget">
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">

                             <?=
                            $form->field($model, 'item_id')->widget(Select2::classname(), [

                                'data' => backend\modules\event\models\EventItem::getEventItemByName($model->vid_id),  
                                'theme' => Select2::THEME_KRAJEE,
                                'options' => ['placeholder' => Yii::t('yee/event', 'Select Events...')],
                                'pluginOptions' => [
                                    'allowClear' => true,
                                ],
                                'addon' => [
                                    'append' => [
                                        'content' => Html::a(Yii::t('yee', 'Add'), ['#'], [
                                                'class' => 'btn btn-primary add-to-item-programm',
                                           'data-id' => $model->id,
                                        ]),
                                        'asButton' => true,
                                    ],
                                ],
                             ])->label(Yii::t('yee/event', 'Events List'));
                            ?>
                           
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">

                            <?php $data = \backend\modules\event\models\EventItemProgramm::getEventItemProgrammList($model->id); ?>
<?php if (!empty($data)): ?>
                                <div class="table-responsive">
                                    <table class="table table-hover table-striped">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th><?= Yii::t('yee/event', 'Event Name'); ?></th>
                                                <th><?= Yii::t('yee/event', 'Qty Items'); ?></th>                                                
                                                <th><?= Yii::t('yee/event', 'Price'); ?></th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
    <?php $qty_summ = $price_summ = 0; ?>
                                            
    <?php foreach ($data as $id => $item): ?>
                                            
    <?php $qty_summ += $item['qty'];
          $price_summ += $item['price'];
    ?>
                                                <tr>
                                                    <td><?= ++$id ?></td>
                                                    <td><?= $item['name'] ?></td>
                                                    <td><?= $item['qty'] ?></td>
                                                    <td><?= $item['price'] ?></td>
                                                    <td><?= Html::a('<span class="glyphicon glyphicon-pencil text-color-default" aria-hidden="true"></span>', ['#'], [
                                                            'class' => 'update-programm',
                                                            'data-id' => $item['id'],
                                                        ]);
                                                        ?>
                                                    <?= Html::a('<span class="glyphicon glyphicon-remove text-danger" aria-hidden="true"></span>', ['#'], [
                                                            'class' => 'remove-programm',
                                                            'data-id' => $item['id'],
                                                        ]);
                                                        ?>
                                                    </td>
                                                </tr>
    <?php endforeach ?>
                                                <tr>
                                                    <td></td>
                                                    <td><b class = 'pull-right'>ИТОГО:</b></td>
                                                    <td><b><?= $qty_summ ?></b></td>
                                                    <td><b><?= $price_summ ?></b></td>
                                                    <td></td>
                                                </tr>
                                        </tbody>
                                    </table>
                                </div>
<?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php ActiveForm::end(); ?>

<?php
$js = <<<JS

function showProgramm(author) {
    $('#item-programm-modal .modal-body').html(author);
    $('#item-programm-modal').modal();
}

$('.add-to-item-programm').on('click', function (e) {

    e.preventDefault();
    
    var id = $(this).data('id'),
        item_id = $('#eventprogramm-item_id').val();

    $.ajax({
        url: '/admin/event/item-programm/init-programm',
        data: {id: id, item_id: item_id},
        type: 'GET',
        success: function (res) {
            if (!res)  alert('Please select event...');
           // console.log(res);
           else showProgramm(res);
        },
        error: function () {
            alert('Script Error!');
        }
    });
});

$('.update-programm').on('click', function (e) {

    e.preventDefault();

    var id = $(this).data('id');

    $.ajax({
        url: '/admin/event/item-programm/update-programm',
        data: {id: id},
        type: 'GET',
        success: function (res) {
            if (!res)  alert('Error!');
           // console.log(res);
           else showProgramm(res);
        },
        error: function () {
            alert('Error!');
        }
    });
});

$('.remove-programm').on('click', function (e) {

    e.preventDefault();
    
    var id = $(this).data('id');

    $.ajax({
        url: '/admin/event/item-programm/remove',
        data: {id: id},
        type: 'GET'
    });
});

JS;

$this->registerJs($js);
?>