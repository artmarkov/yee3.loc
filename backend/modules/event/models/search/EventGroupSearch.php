<?php

namespace backend\modules\event\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\modules\event\models\EventGroup;

/**
 * EventGroupSearch represents the model behind the search form about `backend\modules\event\models\EventGroup`.
 */
class EventGroupSearch extends EventGroup
{
    public $programmName;
    
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'number'], 'integer'],
            [['programm_id', 'name', 'description'], 'safe'],
            ['programmName', 'string'],
            ['gridUsersSearch', 'string'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = EventGroup::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize' => Yii::$app->request->cookies->getValue('_grid_page_size', 20),
            ],
            'sort' => [
                'defaultOrder' => [
                    'id' => SORT_DESC,
                ],
            ],
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        //жадная загрузка       
        $query->with(['programm']);
        $query->with(['groupUsers']);
       
        
        if ($this->gridUsersSearch) {
            $query->joinWith(['groupUsers']);
        }
        
        $query->andFilterWhere([
            'id' => $this->id,
            'number' => $this->number,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'event_group_users.user_id' => $this->gridUsersSearch,
        ]);

        $query->andFilterWhere(['like', 'programm_id', $this->programm_id])
            ->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'description', $this->description]);

        return $dataProvider;
    }
}
