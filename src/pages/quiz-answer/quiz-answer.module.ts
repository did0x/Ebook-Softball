import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { QuizAnswerPage } from './quiz-answer';

@NgModule({
  declarations: [
    QuizAnswerPage,
  ],
  imports: [
    IonicPageModule.forChild(QuizAnswerPage),
  ],
})
export class QuizAnswerPageModule {}
