import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams,AlertController } from 'ionic-angular';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

/**
 * Generated class for the QuizContentPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-quiz-content',
  templateUrl: 'quiz-content.html',
})
export class QuizContentPage {

  public username:any;
  public quiz:any;
  public dataQuiz:any;
  public data:any;
  public quizData:any;

  public no:any = 1;

  constructor(public navCtrl: NavController, public navParams: NavParams, public alertCtrl: AlertController, public http: Http) {
    this.quiz = {};
    this.data = {};
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad QuizContentPage');
    this.username = this.navParams.get('username');
    this.quizLoad();
  }

  quizLoad(){
  	this.http.get('http://ionic.putralab.com/quiz/quiz.php')
  	.map(res => res.json())
  	.subscribe(data=> {
      this.quizData = data;
      console.log(data);
    });
  }

  prepareData(){
    this.dataQuiz = {
      username:this.username,
      quiz:this.quiz
    };
  }

   showConfirm() {
    let confirm = this.alertCtrl.create({
      title: 'Kirim Quiz?',
      message: 'Sudah yakin dengan jawaban?',
      buttons: [
        {
          text: 'Cek Kembali',
          handler: () => {
            console.log('canceled');
          }
        },
        {
          text: 'Kirim',
          handler: () => {
            this.prepareData();
            this.navCtrl.push('QuizResultPage',this.dataQuiz);
          }
        }
      ]
    });
    confirm.present();
  }

}
