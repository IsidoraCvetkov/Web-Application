import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { RadnikComponent } from './radnik/radnik.component';


const routes: Routes = [
  {path:"radnik", component: RadnikComponent},

  {path: "**", redirectTo: "home"}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
