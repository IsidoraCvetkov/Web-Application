import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Plata, PlataModel } from '../models/plata';

@Injectable({
  providedIn: 'root'
})

export class PlataService {
  private baseUrl: string;

  constructor(private client: HttpClient) {
    this.baseUrl = "http://localhost:50668/";
   }

  public getAllPlatas() : Promise<Plata[]> {
    return this.client.get<Plata[]>(this.baseUrl+"api/plata/GetAllPlatas").toPromise<Plata[]>();
  }

  public getPlatas() : Promise<PlataModel[]> {
    return this.client.get<PlataModel[]>(this.baseUrl+"api/plata/GetPlatas").toPromise<PlataModel[]>();
  }
}