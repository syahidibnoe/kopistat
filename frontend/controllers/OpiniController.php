<?php

namespace frontend\controllers;

use Yii;
use common\models\Opini;
use common\models\OpiniSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\ActiveDataProvider;
use yii\web\UploadedFile;

/**
 * OpiniController implements the CRUD actions for Opini model.
 */
class OpiniController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Opini models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new OpiniSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
	
	public function actionIdx()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Opini::find(),
			'sort' => [
				'defaultOrder' => [
					'tanggalterbit' => SORT_DESC,
				],
			],			
			'pagination' => [
				'pageSize' => 5,					
			]
        ]);
		$dataProvider->setTotalCount(10);
		
        return $this->render('idx',[
            'dataProvider' => $dataProvider
        ]);
    }
    /**
     * Displays a single Opini model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }
	
	public function actionV($id)
    {
		return $this->render('v', [
            'model' => $this->findModel($id),
        ]);
    }


    /**
     * Creates a new Opini model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Opini();

        // $tulisan = Tulisan::find()->all();
        // $jenis = Jenis::find()->all();
        // $jenis = ArrayHelper::map($jenis, 'id_jenis','jenis_teks');
        // $kategori = Kategori::find()->all();
        // $kategori = ArrayHelper::map($kategori, 'id_kategori','kategori_teks');

        if ($model->load(Yii::$app->request->post())) {
            $model->nip =Yii::$app->user->identity->nip;
            $model->unitkerja =substr(Yii::$app->user->identity->kodeorganisasi,-5,3).'00';
            $model->kodeprovinsi =Yii::$app->user->identity->kodeprovinsi;
            $model->kodekabupaten =Yii::$app->user->identity->kodekabupaten;
            $model->status ="1";
            $model->file=Uploadedfile::getInstance($model,'file');

            if (!is_null($model->file)){
                $model->file->saveAs('dokumentasi/'.substr($model->judul,0,20).'.'.$model->file->extension );
                $model->dokumentasiopini='dokumentasi/'.$model->id.'.'.$model->file->extension;
            }

            if($model->save()){
                Yii::$app->session->setFlash('submitted');
                return $this->refresh();
                // return $this->redirect(['view', 'id' => $model->id]);
            }
        }

        return $this->render('create', [
            'model' => $model,
        ]);

        // return $this->render('create', [
        //     'model' => $model,
        //     'tulisan' => $tulisan,
        //     'jenis'=> $jenis,
        //     'kategori'=> $kategori
        // ]);
    }

    /**
     * Updates an existing Opini model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);		
		$data['tanggalupdate'] = date("Y-m-d H:i:s");		
		$model->load($data,'');

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['/writer/view?id='.Yii::$app->user->identity->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Opini model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Opini model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Opini the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Opini::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
