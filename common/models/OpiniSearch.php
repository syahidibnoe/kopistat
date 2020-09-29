<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Opini;

/**
 * OpiniSearch represents the model behind the search form of `common\models\Opini`.
 */
class OpiniSearch extends Opini
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'kategori', 'jenismedia'], 'integer'],
            [['judul', 'konten', 'namamedia', 'tautanopini', 'dokumentasiopini', 'tanggalterbit', 'nip', 'unitkerja', 'kodeprovinsi', 'kodekabupaten', 'nipatasan', 'status', 'catatanatasan', 'tanggalbuat', 'tanggalupdate'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
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
        $query = Opini::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'kategori' => $this->kategori,
            'jenismedia' => $this->jenismedia,
            'tanggalterbit' => $this->tanggalterbit,
            'tanggalbuat' => $this->tanggalbuat,
            'tanggalupdate' => $this->tanggalupdate,
        ]);

        $query->andFilterWhere(['like', 'judul', $this->judul])
            ->andFilterWhere(['like', 'konten', $this->konten])
            ->andFilterWhere(['like', 'namamedia', $this->namamedia])
            ->andFilterWhere(['like', 'tautanopini', $this->tautanopini])
            ->andFilterWhere(['like', 'dokumentasiopini', $this->dokumentasiopini])
            ->andFilterWhere(['like', 'nip', $this->nip])
            ->andFilterWhere(['like', 'unitkerja', $this->unitkerja])
            ->andFilterWhere(['like', 'kodeprovinsi', $this->kodeprovinsi])
            ->andFilterWhere(['like', 'kodekabupaten', $this->kodekabupaten])
            ->andFilterWhere(['like', 'nipatasan', $this->nipatasan])
            ->andFilterWhere(['like', 'status', $this->status])
            ->andFilterWhere(['like', 'catatanatasan', $this->catatanatasan]);

        return $dataProvider;
    }
}
