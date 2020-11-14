<?php
namespace frontend\controllers;

use frontend\models\ResendVerificationEmailForm;
use frontend\models\VerifyEmailForm;
use Yii;
use yii\base\InvalidArgumentException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use frontend\models\PasswordResetRequestForm;
use frontend\models\ResetPasswordForm;
use frontend\models\SignupForm;
use frontend\models\ContactForm;
use common\models\Opini;
use common\models\Writer;
use common\models\User;
use yii\data\ActiveDataProvider;
use yii\helpers\Url;

//
/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
	public $rememberMe = true;
	
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout', 'signup'],
                'rules' => [
                    [
                        'actions' => ['signup'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                    [
                        'actions' => ['logout'],
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
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {		
		
        $dataProvider = new ActiveDataProvider([
            'query' => Opini::find(),
			'sort' => [
				'defaultOrder' => [
					'tanggalterbit' => SORT_DESC,
				],
			],			
			'pagination' => [
				'pageSize' => 10,					
			]
        ]);
		$dataProvider->setTotalCount(10);
		
        return $this->render('index',[
            'dataProvider' => $dataProvider
        ]);

    }

    /**
     * Logs in a user.
     *
     * @return mixed
     */
	 
	 /*
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            $model->password = '';

            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }
	*/
	
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
	
	public function actionLogout()
    {
        Yii::$app->user->logout();
		//return $this->redirect(['index']);		
        $url = Url::to(['site/index'], true);
        // return $this->redirect("https://sso.bps.go.id/auth/realms/pegawai-bps/protocol/openid-connect/logout?redirect_uri=".$url);
        return $this->redirect($url);

	}
	

    /**
     * Displays contact page.
     *
     * @return mixed
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail(Yii::$app->params['adminEmail'])) {
                Yii::$app->session->setFlash('success', 'Thank you for contacting us. We will respond to you as soon as possible.');
            } else {
                Yii::$app->session->setFlash('error', 'There was an error sending your message.');
            }

            return $this->refresh();
        } else {
            return $this->render('contact', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Displays about page.
     *
     * @return mixed
     */
    public function actionAbout()
    {
        return $this->render('about');
    }

    /**
     * Signs user up.
     *
     * @return mixed
     */
    public function actionSignup()
    {
        $model = new SignupForm();
        if ($model->load(Yii::$app->request->post()) && $model->signup()) {
            Yii::$app->session->setFlash('success', 'Thank you for registration. Please check your inbox for verification email.');
            return $this->goHome();
        }

        return $this->render('signup', [
            'model' => $model,
        ]);
    }

    /**
     * Requests password reset.
     *
     * @return mixed
     */
    public function actionRequestPasswordReset()
    {
        $model = new PasswordResetRequestForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Check your email for further instructions.');

                return $this->goHome();
            } else {
                Yii::$app->session->setFlash('error', 'Sorry, we are unable to reset password for the provided email address.');
            }
        }

        return $this->render('requestPasswordResetToken', [
            'model' => $model,
        ]);
    }

    /**
     * Resets password.
     *
     * @param string $token
     * @return mixed
     * @throws BadRequestHttpException
     */
    public function actionResetPassword($token)
    {
        try {
            $model = new ResetPasswordForm($token);
        } catch (InvalidArgumentException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }

        if ($model->load(Yii::$app->request->post()) && $model->validate() && $model->resetPassword()) {
            Yii::$app->session->setFlash('success', 'New password saved.');

            return $this->goHome();
        }

        return $this->render('resetPassword', [
            'model' => $model,
        ]);
    }

    /**
     * Verify email address
     *
     * @param string $token
     * @throws BadRequestHttpException
     * @return yii\web\Response
     */
    public function actionVerifyEmail($token)
    {
        try {
            $model = new VerifyEmailForm($token);
        } catch (InvalidArgumentException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }
        if ($user = $model->verifyEmail()) {
            if (Yii::$app->user->login($user)) {
                Yii::$app->session->setFlash('success', 'Your email has been confirmed!');
                return $this->goHome();
            }
        }

        Yii::$app->session->setFlash('error', 'Sorry, we are unable to verify your account with provided token.');
        return $this->goHome();
    }

    /**
     * Resend verification email
     *
     * @return mixed
     */
    public function actionResendVerificationEmail()
    {
        $model = new ResendVerificationEmailForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Check your email for further instructions.');
                return $this->goHome();
            }
            Yii::$app->session->setFlash('error', 'Sorry, we are unable to resend verification email for the provided email address.');
        }

        return $this->render('resendVerificationEmail', [
            'model' => $model
        ]);
    }
}
