import { RadnikService } from './../services/radnik.service';
import { Component, OnInit } from '@angular/core';
import { Radnik, RadnikModel } from '../models/radnik';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  radniks: Radnik[];
  radnikFirst: RadnikModel;

  constructor(private radnikService: RadnikService) {
    this.radnikFirst = new RadnikModel();
   }

  async ngOnInit() {
    this.radniks = await this.radnikService.getAllRadniks();
  }

  public async detaljiRadnika(radnik){
    this.radnikFirst = await this.radnikService.getRadnik();
  }
}
