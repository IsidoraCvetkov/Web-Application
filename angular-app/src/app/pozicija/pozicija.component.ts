import { Pozicija } from './../models/pozicija';
import { Component, OnInit } from '@angular/core';
import { PozicijaService } from '../services/pozicija.service';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-pozicija',
  templateUrl: './pozicija.component.html',
  styleUrls: ['./pozicija.component.css']
})
export class PozicijaComponent implements OnInit {
  pozicijasAll: Pozicija[];
  pozicija: Pozicija;

  public editForm: FormGroup;
  public addForm: FormGroup;

  message: string;
  messageEdit: string;
  public isBtnEditClicked: boolean;

  constructor(private fb: FormBuilder, private pozicijaService: PozicijaService) { 
    this.addForm = this.fb.group({
      nazivPozicije: ['', Validators.required]
    });

    this.editForm = this.fb.group({
      nazivPozicije: ['', Validators.required]
    });

    this.pozicija = new Pozicija();
    this.isBtnEditClicked = false;
  }
  async ngOnInit() {
    this.pozicijasAll = await this.pozicijaService.getAllPozicijas();
  }

  public async onSubmit(){
    this.pozicija.NazivPozicije = this.addForm.controls['nazivPozicije'].value;

    if(this.addForm.controls['nazivPozicije'].value==""){
      this.message = "Morate popuniti polje naziva pozicije";
    }
    else{
      this.pozicijaService.addPozicija(this.pozicija).subscribe(data=>{
        this.message=data; 
        }, err => console.log(err));
    }
    this.pozicijasAll = await this.pozicijaService.getAllPozicijas();
  }

  public editPozicija(pozicija){
    this.isBtnEditClicked = true;
    this.editForm = this.fb.group({
      nazivPozicije: [pozicija.NazivPozicije],
      idPozicije: [pozicija.IdPozicija]
    });
    this.pozicija.IdPozicija = pozicija.IdPozicija;
  }

  public async onSubmitEdit(){
    this.pozicija.NazivPozicije = this.editForm.controls['nazivPozicije'].value;

    this.pozicijaService.editPozicija(this.pozicija).subscribe(data=>{
        if(data != "Ok")
          alert(data);
        this.messageEdit = data;
      }, err => console.log(err));

    this.isBtnEditClicked = false;
    this.pozicijasAll = await this.pozicijaService.getAllPozicijas();
  }
}