import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

/**
 * Generated class for the MateriBabPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-materi-bab',
  templateUrl: 'materi-bab.html',
})
export class MateriBabPage {

  public idBab :any;
  public babTitle :any;

  public babContents :any;

  constructor(public navCtrl: NavController, public navParams: NavParams, public http : Http) {
  }

  toMateriContent(babTitle,babMateri){
    
        let data = {
          title:babTitle,
          materi:babMateri
        }
        this.navCtrl.push('MateriContentPage',data);
    }

  ionViewDidLoad() {
    // console.log('ionViewDidLoad MateriBabPage');
    this.idBab = this.navParams.get('id');
    this.babTitle = this.navParams.get('title');
    this.babContentLoad();
  }

  babContentLoad(){
  	this.http.get('http://ionic.putralab.com/materi/materi.php?id=' + this.navParams.get('id'))
  	.map(res => res.json())
  	.subscribe(data=> {
      this.babContents = data;
      console.log(data);
    });
  }



}
