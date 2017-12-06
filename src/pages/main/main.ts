import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { MateriPage } from '../materi/materi';
import { QuizPage } from '../quiz/quiz';
import { ScoreboardPage } from '../scoreboard/scoreboard';
import { AboutPage } from '../about/about';

/**
 * Generated class for the MainPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-main',
  templateUrl: 'main.html',
})
export class MainPage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad MainPage');
  }

  goMateri() {
    this.navCtrl.push(MateriPage);
  }

  goQuiz() {
    this.navCtrl.push(QuizPage);
  }

  goScoreboard() {
    this.navCtrl.push(ScoreboardPage);
  }

  goAbout() {
    this.navCtrl.push(AboutPage);
  }
  
  log():void {
    console.log('Your message here');
   }

}
