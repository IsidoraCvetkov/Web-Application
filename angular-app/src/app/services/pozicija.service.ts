import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Pozicija } from '../models/pozicija';

@Injectable({
  providedIn: 'root'
})

export class PozicijaService {
  private baseUrl: string;

  constructor(private client: HttpClient) {
    this.baseUrl = "http://localhost:50668/";
   }

  public getAllPozicijas() : Promise<Pozicija[]> {
    return this.client.get<Pozicija[]>(this.baseUrl+"api/pozicija/GetAllPozicijas").toPromise<Pozicija[]>();
  }

  public addPozicija(pozicija :Pozicija){
    return this.client.post<any>(this.baseUrl+"api/pozicija/AddPozicija",pozicija, {'headers': {'Content-type': 'application/json'}});
  }

  public editPozicija(pozicija :Pozicija){
    return this.client.post<any>(this.baseUrl+"api/pozicija/EditPozicija",pozicija, {'headers': {'Content-type': 'application/json'}});
  }
}