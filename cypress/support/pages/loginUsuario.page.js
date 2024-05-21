export default class LoginPage {
  inputEmail = '[name="email"]';
  inputSenha = '[name="password"]';

  labelErroEmail = ".input-error";
  labelFalhaAutenticar = ".modal-body > h3";
  labelUsuarioInválido = ".error-message";

  buttonLogin = ".login-button";
  buttonOk = ".modal-actions > button";

  tipoUsuario = ":nth-child(3) > label";
  inputTipoUsuário = ":nth-child(3) > .profile-input";

  typeEmail(email) {
    cy.get(this.inputEmail).type(email);
  }

  typeSenha(password) {
    cy.get(this.inputSenha).type(password);
  }

  clickButtonLogar() {
    cy.get(this.buttonLogin).click();
  }

  clickButtonPerfil() {
    cy.get(this.buttonPerfil).click();
  }

  clickButtonGerenciar() {
    cy.get(this.buttonGerenciarConta).click();
  }

  clickButtonOk() {
    cy.get(this.buttonOk).click();
  }
}
