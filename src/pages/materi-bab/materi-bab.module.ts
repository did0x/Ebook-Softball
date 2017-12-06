import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { MateriBabPage } from './materi-bab';

@NgModule({
  declarations: [
    MateriBabPage,
  ],
  imports: [
    IonicPageModule.forChild(MateriBabPage),
  ],
})
export class MateriBabPageModule {}
