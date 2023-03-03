import { Component, OnInit } from '@angular/core';
import { Plata, PlataModel } from '../models/plata';
import { PlataService } from '../services/plata.service';

@Component({
  selector: 'app-plata',
  templateUrl: './plata.component.html',
  styleUrls: ['./plata.component.css']
})
export class PlataComponent implements OnInit {
  platasAll: Plata[];
  platas: PlataModel[];

  constructor(private plataService: PlataService) {
    this.platas = new Array<PlataModel>();
  }

  async ngOnInit() {
    //this.platasAll = await this.plataService.getAllPlatas();
    this.platas = await this.plataService.getPlatas();
  }
}