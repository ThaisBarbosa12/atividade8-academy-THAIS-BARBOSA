import {
  Given,
  When,
  Then,
  Before,
  BeforeAll,
} from "@badeball/cypress-cucumber-preprocessor";
import { faker } from "@faker-js/faker";
import CadastroPage from "../pages/cadastrarUsuario.page";
const paginaCadastro = new CadastroPage();

Before({ tags: "@usuarioExistente" }, () => {
  cy.intercept("POST", "https://raromdb-3c39614e42d4.herokuapp.com/api/users", {
    statusCode: 409,
    body: {
      message: "Email already in use",
      error: "Conflict",
    },
  }).as("postUser");
});

Before({ tags: "@novoUsuario" }, () => {
  var nameUser = faker.person.firstName() + " teste";
  var emailUser = faker.internet.email();
  cy.request({
    method: "POST",
    url: "https://raromdb-3c39614e42d4.herokuapp.com/api/users",
    body: {
      name: nameUser,
      email: emailUser,
      password: "123456",
    },
  }).as("usuarioCriado");
});

Given("que acessei a tela de cadastro de usuário", function () {
  cy.visit("/register");
});

When("preencher o campo nome", function () {
  paginaCadastro.typeNome(faker.person.firstName() + " teste");
});

When("preencher o campo e-mail", function () {
  paginaCadastro.typeEmail(faker.internet.email());
});

When("preencher o campo senha", function () {
  paginaCadastro.typeSenha("123456");
});

When("preencher o campo confirmar senha", function () {
  paginaCadastro.typeConfirmaSenha("123456");
});

When("acessar a função cadastrar", function () {
  paginaCadastro.clickButtonCadastrar();
});

When("preencher o campo e-mail com um e-mail já utilizado", function () {
  paginaCadastro.typeEmail(faker.internet.email());
});

When("acessar a conta de um novo usuário", function () {
  cy.visit("/login");
  cy.get("@usuarioCriado").then(function (usuario) {
    paginaCadastro.typeEmailLogin(usuario.body.email);
    paginaCadastro.typeSenhaLogin("123456");
    paginaCadastro.clickButtonLogar();
  });
});

When("acessar o perfil do usuário", function () {
  paginaCadastro.clickButtonPerfil();
});

When("acessar a funcionalidade de gerenciar conta", function () {
  paginaCadastro.clickButtonGerenciar();
});

When(
  "preencher o campo e-mail {string} com formato de e-mail inválido",
  function (email) {
    paginaCadastro.typeEmail(email);
  }
);

When("preencher o campo nome {string} com qualquer formato", function (nome) {
  paginaCadastro.typeNome(nome);
});

When(
  "preencher o campo senha {string} com senha diferente do campo confirmar senha",
  function (senha) {
    paginaCadastro.typeSenha(senha);
  }
);

When(
  "preencher o campo confirmar senha {string} com senha diferente do campo senha",
  function (confSenha) {
    paginaCadastro.typeConfirmaSenha(confSenha);
  }
);

When("não preencher os campos obrigatórios", function () {});

When("preencher o campo senha com {string}", function (senha) {
  paginaCadastro.typeSenha(senha);
});

When("preencher o campo confirmar senha com {string}", function (confSenha) {
  paginaCadastro.typeConfirmaSenha(confSenha);
});

When("preencher o campo e-mail com 61 carecteres {string}", function (email) {
  paginaCadastro.typeEmail(email);
});

When("preencher o campo nome com 101 caracteres {string}", function (nome) {
  paginaCadastro.typeNome(nome);
});

Then(
  "o sistema exibirá o alerta informando que o cadastro foi realizado com sucesso",
  function () {
    cy.get(paginaCadastro.labelSucesso).should("contain", "Sucesso");
    cy.get(paginaCadastro.labelCadastroRealizado).should(
      "contain",
      "Cadastro realizado!"
    );
    paginaCadastro.clicButtonOk();
  }
);

Then("o sistema exibirá o alerta de erro {string}", function (mensagem) {
  cy.get(paginaCadastro.labelFalhaNoCadastro).should(
    "contain",
    "Falha no cadastro"
  );
  cy.get(paginaCadastro.labelNaoCadastrou).should("contain", mensagem);
  paginaCadastro.clicButtonOk();
});

Then("o usuário será do tipo 0, usuário comum", function () {
  cy.get(paginaCadastro.tipoUsuario).should("be.visible");
  cy.get(paginaCadastro.inputTipoUsuário).should("contain", "Comum");
});

Then(
  "no campo tipo de usuário devem existir as opções de usuários do tipo comun, admin e crítico",
  function () {
    cy.get(paginaCadastro.tipoUsuario).should("be.visible");
    cy.get(paginaCadastro.inputTipoUsuário).should("contain", "Comum");
    cy.get(paginaCadastro.inputTipoUsuário).should("contain", "Administrador");
    cy.get(paginaCadastro.inputTipoUsuário).should("contain", "Crítico(a)");
  }
);

Then("o sistema exibirá a mensagem de erro {string}", function (mensagem) {
  cy.get(paginaCadastro.labelErroConfSenhaDif).should("contain", mensagem);
});

Then("o sistema exibirá mensagens de erro em todos os campos", function () {
  cy.get(paginaCadastro.labelErroNome).should("contain", "Informe o nome");
  cy.get(paginaCadastro.labelErroEmail).should("contain", "Informe o e-mail");
  cy.get(paginaCadastro.labelErroSenha).should("contain", "Informe a senha");
  cy.get(paginaCadastro.labelErroConfSenha).should(
    "contain",
    "Informe a senha"
  );
});
