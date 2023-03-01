import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { PlataComponent } from './plata/plata.component';
import { PozicijaComponent } from './pozicija/pozicija.component';
import { RadnikComponent } from './radnik/radnik.component';


const routes: Routes = [
  {path:"radnik", component: RadnikComponent},
  {path:"home", component: HomeComponent},
  {path:"plata", component: PlataComponent},
  {path:"pozicija", component: PozicijaComponent},
  
  {path: "", component: HomeComponent, pathMatch: "full"},
  {path: "**", redirectTo: "home"}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
