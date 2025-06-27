import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { AuthService } from 'src/app/shared/auth/auth.service';
import { routes } from 'src/app/shared/routes/routes';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
})
export class LoginComponent implements OnInit {
  public routes = routes;
  public passwordClass = false;

  form = new FormGroup({
    email: new FormControl('ingeniebrios@alcoholizados.com', [
      Validators.required,
      Validators.email,
    ]),
    password: new FormControl('87654321', [Validators.required]),
  });

  get f() {
    return this.form.controls;
  }

  constructor(public auth: AuthService, public router: Router) {}
  ngOnInit(): void {
    if (localStorage.getItem('authenticated')) {
      localStorage.removeItem('authenticated');
    }
  }

  loginFormSubmit() {
    if (this.form.valid) {
      this.auth.login(this.form.value.email ? this.form.value.email: '' ,this.form.value.password ? this.form.value.password: '')
      .subscribe((resp:any) => {
        console.log(resp);
        if(resp){
          this.router.navigate([routes.adminDashboard]);
        }else{
          //EL LOGIN NO ES EXISTOSO
          alert("QUE EL USUARIO O CONTRASEÑA SON INCORRECTOS, NO EXISTEN");
        }
      }, error => {
        console.log(error);
      });
    }
  }
  togglePassword() {
    this.passwordClass = !this.passwordClass;
  }
}
