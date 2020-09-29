<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use common\models\Opini;
use common\models\Writer;
use common\models\User;
use yii\data\ActiveDataProvider;
use yii\helpers\Url;
use yii\base\InvalidArgumentException;
use yii\web\BadRequestHttpException;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    /**
     * Login action.
     *
     * @return string
     */
    // public function actionLogin()
    // {
    //     if (!Yii::$app->user->isGuest) {
    //         return $this->goHome();
    //     }

    //     $model = new LoginForm();
    //     if ($model->load(Yii::$app->request->post()) && $model->login()) {
    //         return $this->goBack();
    //     } else {
    //         $model->password = '';

    //         return $this->render('login', [
    //             'model' => $model,
    //         ]);
    //     }
    // }

    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }
        
		$url = Url::to(['site/login'], true);
	
		if(!Yii::$app->request->get('token')){           
			return $this->redirect('https://webapps.bps.go.id/riau/sso/index.php?aplikasi='.$url);        
        }       
        $text = Yii::$app->request->get('token');
        // $text="MzQwMDE5MTQ4fERhZGFuZyBTdW5hbmRhcnxkYWRhbmdzdW5hbmRhckBicHMuZ28uaWR8ZGFkYW5nc3VuYW5kYXJ8MTk4MzExMDgyMDA3MDExMDA0fDE0MDAwMDA5MjYyMHwxNHwwMHxKbC4gUGF0dGltdXJhIE5vLiAxMnxSaWF1fFByb3YuIFJpYXV8SUlJL2R8S2VwYWxhIFNla3NpIEphcmluZ2FuIGRhbiBSdWp1a2FuIFN0YXRpc3Rpa3xodHRwczovL2NvbW11bml0eS5icHMuZ28uaWQvaW1hZ2VzL2F2YXRhci8xOTE0OC5KUEd8NA==";
		
		$a = explode("|",base64_decode($text));
		$nip = $a[0];
        $nama = $a[1];					
        $email = $a[2]; 
        $username = $a[3]; 
        $nipbaru = $a[4];
        $kodeorganisasi = $a[5];
        $kodeprovinsi = $a[6]; 
        $kodekabupaten = $a[7]; 
        $alamatkantor = $a[8]; 
        $provinsi = $a[9]; 
        $kabupaten = $a[10]; 
        $golongan = $a[11];
        $jabatan = $a[12];
        $foto = $a[13]; 
        $eselon = $a[14];
		
			$data['nip'] = $nip;
			$data['nama'] = $nama;					
			$data['email'] = $email; 
			$data['username'] = $username; 
			$data['nipbaru'] = $nipbaru;
			$data['kodeorganisasi'] = $kodeorganisasi;
			$data['kodeprovinsi'] = $kodeprovinsi; 
			$data['kodekabupaten'] = $kodekabupaten; 
			$data['alamatkantor'] = $alamatkantor; 
			$data['provinsi'] = $provinsi; 
			$data['kabupaten'] = $kabupaten; 
			$data['golongan'] = $golongan;
			$data['jabatan'] = $jabatan;
			$data['foto'] = $foto; 
			$data['eselon'] = $eselon;
			$data['status'] = '10';
			
		$model = Writer::findByNip($nip);		
		if ($model){	
			$data['updated_at'] = date('Y-m-d');		
			$model->load($data,'');
			$model->save();			
		}else{			
			$model = new Writer();	
			$data['created_at'] = date('Y-m-d');					
			$model->load($data,'');
			$model->save();						
		}
		
        $user = User::findByNip($nip);			
        if($user){			    
			Yii::$app->user->login($user);	
            return $this->redirect(['index']);			
        }
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }
}
