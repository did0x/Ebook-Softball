import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

/**
 * Generated class for the ScoreboardPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-scoreboard',
  templateUrl: 'scoreboard.html',
})
export class ScoreboardPage {

  public scores:any;
  public information: any;

  constructor(public navCtrl: NavController, public navParams: NavParams, public http: Http) {
  }

  ionViewDidLoad() {
    this.http.get('http://ionic.putralab.com/quiz/score.php')
  	.map(res => res.json())
  	.subscribe(data=> {
      if (data.length == 0 || data.length == null) {
        this.information = "Kamu belum mencoba quiz !";
        this.scores = "";
      } else {
        this.scores = data;
        this.information = ""
      }

      var i;
      for (i = 0 ; i < data.length; i++){
        if(data[i].username == null){
          data[i].username = "Anonymous";
        }
      }
      
      // console.log(data);
     
    });
    console.log('ionViewDidLoad ScoreboardPage');
  }

}
