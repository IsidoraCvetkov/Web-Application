import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PozicijaComponent } from './pozicija.component';

describe('PozicijaComponent', () => {
  let component: PozicijaComponent;
  let fixture: ComponentFixture<PozicijaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PozicijaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PozicijaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
