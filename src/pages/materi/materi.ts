import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

/**
 * Generated class for the MateriPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-materi',
  templateUrl: 'materi.html',
})
export class MateriPage {

  public babs : any;

  constructor(public navCtrl: NavController, public navParams: NavParams, public http : Http) {
  }

  toMateriBab(babId,babTitle){
    
        let data = {
          id:babId,
          title:babTitle
        }
        this.navCtrl.push('MateriBabPage',data);
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad MateriPage');
  }

  ionViewWillEnter(){
  	this.babsLoad();
  }

  babsLoad(){
    
  	this.http.get('http://ionic.putralab.com/materi/bab.php')
  	.map(res => res.json())
  	.subscribe(data=> {
  		this.babs = data;
  	});
  }


}
