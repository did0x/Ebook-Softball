import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the MateriContentPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-materi-content',
  templateUrl: 'materi-content.html',
})
export class MateriContentPage {

  public idBab :any;
  public babMateri :any;
  public babTitle :any;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    this.babMateri = this.navParams.get('materi');
    this.babTitle = this.navParams.get('title');
    console.log('ionViewDidLoad MateriContentPage');
  }

}
