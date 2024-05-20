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

  labelSucesso = ".modal-body > h3";
  labelCadastroSucesso = ".error-message";

  labelFalhaNoCadastro = ".modal-body > h3";
  labelNaoCadastrou = ".error-message";

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
