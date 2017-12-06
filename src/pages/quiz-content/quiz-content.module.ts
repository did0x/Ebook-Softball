import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { QuizContentPage } from './quiz-content';

@NgModule({
  declarations: [
    QuizContentPage,
  ],
  imports: [
    IonicPageModule.forChild(QuizContentPage),
  ],
})
export class QuizContentPageModule {}
