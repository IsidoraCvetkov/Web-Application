import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Radnik, RadnikModel } from '../models/radnik';

@Injectable({
  providedIn: 'root'
})

export class RadnikService {
  private baseUrl: string;

  constructor(private client: HttpClient) {
    this.baseUrl = "http://localhost:50668/";
   }

  public getAllRadniks() : Promise<Radnik[]> {
    return this.client.get<Radnik[]>(this.baseUrl+"api/radnik/GetAllRadniks").toPromise<Radnik[]>();
  }

  public getRadnik() : Promise<RadnikModel> {
    return this.client.get<RadnikModel>(this.baseUrl+"api/radnik/GetRadnik").toPromise<RadnikModel>();
  }

  public getRadnikId(radnikId : number) {
    return this.client.get<RadnikModel>(this.baseUrl+"api/radnik/GetRadnikId?radnikId=" + radnikId).toPromise<RadnikModel>();
  }
}