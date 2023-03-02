import { Bonus } from "./bonus";
import { Odbitak } from "./odbitak";

export class Radnik{
    IdRadnik: number;
    NadredjenId: number;
    PozicijaId: number;
    Ime: string;
    Prezime: string;
    PreiodRaspodele: Date;
}

export class RadnikModel{
    IdRadnik: number;
    Ime: string;
    Prezime: string;
    ImeNadredjenog: string;
    PrezimeNadredjenog: string;
    NazivPozicije: string;
    PreiodRaspodele: Date;
    IznosPlate: number;
    BonusiAktivni: Bonus[];
    OdbitciAktivni: Odbitak[];
    BrojDanaGodisnjegOdmora: number;
}