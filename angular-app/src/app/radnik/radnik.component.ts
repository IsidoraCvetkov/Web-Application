import { Component, OnInit } from '@angular/core';
import { Radnik, RadnikModel } from '../models/radnik';
import { RadnikService } from '../services/radnik.service';

@Component({
  selector: 'app-radnik',
  templateUrl: './radnik.component.html',
  styleUrls: ['./radnik.component.css']
})
export class RadnikComponent implements OnInit {
  radniks: Radnik[];
  radnikFirst: RadnikModel;
  isBtnDetaljiClicked: boolean;

  constructor(private radnikService: RadnikService) { 
    this.radniks = new Array<Radnik>();
    this.radnikFirst = new RadnikModel;

    this.isBtnDetaljiClicked = false;
  }

  async ngOnInit() {
    this.radniks = await this.radnikService.getAllRadniks();
    //this.radnikFirst = await this.radnikService.getRadnik();
  }

  public async detaljiRadnika(radnik){
    this.isBtnDetaljiClicked = true;

    this.radnikFirst.IdRadnik = radnik.IdRadnik;
    this.radnikFirst = await this.radnikService.getRadnikId(radnik.IdRadnik);
  }
}