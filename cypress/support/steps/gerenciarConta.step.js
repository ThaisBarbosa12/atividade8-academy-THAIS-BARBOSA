import {
  Given,
  When,
  Then,
  Before,
  After,
} from "@badeball/cypress-cucumber-preprocessor";
import { faker } from "@faker-js/faker";
import GerenciarPage from "../pages/gerenciarConta.page";
const paginaGerenciar = new GerenciarPage();
var token;
var email;

Before({ tags: "@novoUsuario" }, () => {
  cy.newUser()
    .as("usuarioCriado")
    .then((response) => {
      email = response.body.email;
    });
});

Before(function () {
  cy.visit("/login");
  cy.get("@usuarioCriado").then(function (usuario) {
    paginaGerenciar.typeEmail(usuario.body.email);
    paginaGerenciar.typeSenha("123456");
    paginaGerenciar.clickButtonLogin();
  });
});

After({ tags: "@novoUsuario" }, () => {
  cy.deleteUser();
});

Given(
  "que possuo um usuário comum cadastrado e logado no sistema",
  function () {
    cy.get("@usuarioCriado");
  }
);

Given(
  "que possuo um usuário crítico cadastrado e logado no sistema",
  function () {
    cy.request({
      method: "POST",
      url: "https://raromdb-3c39614e42d4.herokuapp.com/api/auth/login",
      body: {
        email: email,
        password: "123456",
      },
    })
      .as("logarUsuario")
      .then((response) => {
        token = response.body.accessToken;
        cy.request({
          method: "PATCH",
          url: "https://raromdb-3c39614e42d4.herokuapp.com/api/users/apply",
          headers: {
            Authorization: "Bearer " + token,
          },
        }).as("promoverCrítico");
      });
  }
);

Given(
  "que possuo um usuário administrador cadastrado e logado no sistema",
  function () {
    cy.request({
      method: "POST",
      url: "https://raromdb-3c39614e42d4.herokuapp.com/api/auth/login",
      body: {
        email: email,
        password: "123456",
      },
    })
      .as("logarUsuario")
      .then((response) => {
        token = response.body.accessToken;
        cy.request({
          method: "PATCH",
          url: "https://raromdb-3c39614e42d4.herokuapp.com/api/users/admin",
          headers: {
            Authorization: "Bearer " + token,
          },
        }).as("promoverAdmin");
      });
  }
);

Given("que acessei a funcionalidade de gerencimaneto de conta", function () {
  paginaGerenciar.clickLinkPerfil();
  paginaGerenciar.clickLinkGerenciar();
});

When("vizualizar o texto {string}", function (mensagem) {
  cy.get(paginaGerenciar.labelAtualize).should("contain", mensagem);
});

When(
  "alterar as próprias informações de nome, senha e confirmar senha do usuário comum",
  function () {
    paginaGerenciar.typeNome(faker.person.firstName() + " teste");
    paginaGerenciar.clickButtonAlterarSenha();
    paginaGerenciar.typeSenha("123456");
    paginaGerenciar.typeConfirmaSenha("123456");
  }
);

When("acessar a função salvar", function () {
  paginaGerenciar.clickButtonSalvar();
});

Then("o usuário poderá atualizar suas informações", function () {
  cy.get(paginaGerenciar.inputNome).should("be.enabled");
  cy.get(paginaGerenciar.inputEmail).should("be.disabled");
  cy.get(paginaGerenciar.labelTipoUser).should("be.disabled");
  paginaGerenciar.clickButtonAlterarSenha();
  cy.get(paginaGerenciar.inputSenha).should("be.enabled");
  cy.get(paginaGerenciar.inputConfirmaSenha).should("be.enabled");
  cy.get(paginaGerenciar.labelSalvar).should("be.enabled");
});

When("alterar o campo nome", function () {
  paginaGerenciar.typeNome(faker.person.firstName() + " teste");
});
When("atualizar o campo senha", function () {
  paginaGerenciar.clickButtonAlterarSenha();
  paginaGerenciar.typeSenha("123456");
});
When(
  "atualizar o campo confirmar senha com o mesmo valor inserido no campo senha",
  function () {
    paginaGerenciar.typeConfirmaSenha("123456");
  }
);

When(
  "atualizar o campo confirmar senha com um valor diferente do inserido no campo senha",
  function () {
    paginaGerenciar.typeConfirmaSenha("005500");
  }
);

When(
  "atualizar os campos de senha e confirmar senha para {string}",
  function (senha) {
    paginaGerenciar.clickButtonAlterarSenha();
    paginaGerenciar.typeSenha(senha);
    paginaGerenciar.typeConfirmaSenha(senha);
  }
);

When("habilitar a função alterar senha", function () {
  paginaGerenciar.clickButtonAlterarSenha();
});

Then(
  "será possível atualizar as informações do usuário com sucesso",
  function () {
    cy.get(paginaGerenciar.labelSucesso).should("contain", "Sucesso");
    cy.get(paginaGerenciar.labelAtualizado).should(
      "contain",
      "Informações atualizadas!"
    );
    paginaGerenciar.clickButtonOk();
  }
);

Then("o sistema exibirá a mensagem de erro {string}", function (mensagem) {
  cy.get(paginaGerenciar.labelCampoConfirmaSenha).should("contain", mensagem);
});

Then(
  "o usuário terá acesso aos dados de nome e e-mail da sua conta",
  function () {
    cy.get(paginaGerenciar.inputNome).should("be.visible");
    cy.get(paginaGerenciar.inputEmail).should("be.visible");
  }
);
Then(
  "o campo senha senha exibirá a mensagem de erro {string}",
  function (mensagem) {
    cy.get(paginaGerenciar.labelCampoSenha).should("contain", mensagem);
  }
);
Then(
  "o campo confirmar senha exibirá a mensagem de erro {string}",
  function (mensagem) {
    cy.get(paginaGerenciar.labelCampoConfirmaSenha).should("contain", mensagem);
  }
);
