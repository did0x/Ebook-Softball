import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { MateriContentPage } from './materi-content';

@NgModule({
  declarations: [
    MateriContentPage,
  ],
  imports: [
    IonicPageModule.forChild(MateriContentPage),
  ],
})
export class MateriContentPageModule {}
