import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

/**
 * Generated class for the QuizResultPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-quiz-result',
  templateUrl: 'quiz-result.html',
})
export class QuizResultPage {

  public username:any;
  public score:any;
  public correct:any;
  public incorrect:any;

  constructor(public navCtrl: NavController, public navParams: NavParams, public http: Http) {
  }

  ionViewDidLoad() {
    var quiz = this.navParams.get('quiz');
    var username = this.navParams.get('username');
    var id =  '1'
    console.log(quiz);
    var link = 'http://ionic.putralab.com/quiz/result.php';
    var data = JSON.stringify({id:id,username:username,quiz:quiz});
    console.log(data);

    this.http.post(link, data)
    .map(res => res.json())
    .subscribe(data => {
       console.log(data.username);

       this.username = data.username;
       this.score = data.score;
       this.correct = data.correct;
       this.incorrect = data.incorrect;

    }, error => {
        console.log("Something went wrong !");
    });

  }

  backPage(){
    this.navCtrl.remove(2,2);
    this.navCtrl.pop();
  }

  quizAnswer(){
    this.navCtrl.push('QuizAnswerPage');
  }
  

}
