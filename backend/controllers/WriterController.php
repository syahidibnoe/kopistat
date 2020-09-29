<?php

namespace frontend\controllers;

use Yii;
use common\models\Writer;
use common\models\WriterSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\ActiveDataProvider;
use common\models\Opini;
use yii\web\UploadedFile;

/**
 * WriterController implements the CRUD actions for Writer model.
 */
class WriterController extends Controller
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
     * Lists all Writer models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new WriterSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        $dataProvider2 = new ActiveDataProvider([
            'query' => Opini::find()->where(['nip'=>Yii::$app->user->identity->id]),
			'sort' => [
				'defaultOrder' => [
					'tanggalterbit' => SORT_DESC,
				],
			],			
			'pagination' => [
				'pageSize' => 10,					
			]
        ]);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'dataProvider2' => $dataProvider2,
        ]);
    }

    /**
     * Displays a single Writer model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    // public function actionView($id)
    // {
    //     return $this->render('view', [
    //         'model' => $this->findModel($id),
    //     ]);
    // }

    public function actionView($id)
    {

        $dataProvider2 = new ActiveDataProvider([
            'query' => Opini::find()->where(['nip'=>Yii::$app->user->identity->nip]),
			'sort' => [
				'defaultOrder' => [
					'tanggalterbit' => SORT_DESC,
				],
			],			
			'pagination' => [
				'pageSize' => 6,					
			]
        ]);

        return $this->render('view', [
            'model' => $this->findModel($id),
            'dataProvider2' => $dataProvider2,
        ]);
    }

    /**
     * Creates a new Writer model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Writer();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Writer model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) ) {
            $model->profil_upd=Uploadedfile::getInstance($model,'profil_upd');
            
            $model->profil_upd->saveAs($_SERVER['DOCUMENT_ROOT'].Yii::$app->request->baseUrl.'/foto/'.$model->nip.'.jpg');
            // $model->dokumentasiopini='dokumentasi/'.$model->id.'.'.$model->file->extension;

            if($model->save()){
                return $this->redirect(['view', 'id' => $model->id]);
            }
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Writer model.
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
     * Finds the Writer model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Writer the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Writer::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

}
