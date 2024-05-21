export default class CadastroPage {
  inputNome = '[name="name"]';
  inputEmail = '[name="email"]';
  inputSenha = '[name="password"]';
  inputConfirmaSenha = '[name="confirmPassword"]';
  buttonCadastrar = ".account-save-button";
  buttonOk = ".modal-actions > button";

  labelErroNome = ":nth-child(1) > .input-error";
  labelErroEmail = ":nth-child(2) > .input-error";
  labelErroSenha = ":nth-child(3) > .input-error";
  labelErroConfSenha = ":nth-child(4) > .input-error";
  labelErroConfSenhaDif = ".input-error";

  labelSucesso = ".modal-body > h3";
  labelCadastroRealizado = ".error-message";

  labelFalhaNoCadastro = ".modal-body > h3";
  labelNaoCadastrou = ".error-message";

  inputEmailLogin = '[name="email"]';
  inputSenhaLogin = '[name="password"]';

  buttonLogin = ".login-button";

  tipoUsuario = ":nth-child(3) > label";
  inputTipoUsuário = ":nth-child(3) > .profile-input";

  linkPerfil = '[href="/profile"]';
  linkGerenciarConta = '[href="/account"]';

  typeEmailLogin(email) {
    cy.get(this.inputEmailLogin).type(email);
  }

  typeSenhaLogin(senha) {
    cy.get(this.inputSenhaLogin).type(senha);
  }

  clickButtonLogar() {
    cy.get(this.buttonLogin).click();
  }

  clickLinkPerfil() {
    cy.get(this.linkPerfil).click();
  }

  clickLinkGerenciar() {
    cy.get(this.linkGerenciarConta).click();
  }

  typeNome(nome) {
    cy.get(this.inputNome).type(nome);
  }

  typeEmail(email) {
    cy.get(this.inputEmail).type(email);
  }

  typeSenha(password) {
    cy.get(this.inputSenha).type(password);
  }

  typeConfirmaSenha(confirmPassword) {
    cy.get(this.inputConfirmaSenha).type(confirmPassword);
  }

  clickButtonCadastrar() {
    cy.get(this.buttonCadastrar).click();
  }

  clicButtonOk() {
    cy.get(this.buttonOk).click();
  }
}
