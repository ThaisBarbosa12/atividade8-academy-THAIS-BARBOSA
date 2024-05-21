import {
  Given,
  When,
  Then,
  Before,
  After,
} from "@badeball/cypress-cucumber-preprocessor";
import { faker } from "@faker-js/faker";
import LoginPage from "../pages/loginUsuario.page";
const paginaLogin = new LoginPage();
var token;
var id;
var email;

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
  })
    .as("usuarioCriado")
    .then((response) => {
      id = response.body.id;
      email = response.body.email;
    });
});

After({ tags: "@novoUsuario" }, () => {
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
    })
    .then((response) => {
      cy.request({
        method: "DELETE",
        url: "https://raromdb-3c39614e42d4.herokuapp.com/api/users/" + id,
        headers: {
          Authorization: "Bearer " + token,
        },
      }).as("deletarUsuario");
    });
});

Given("que acessei a tela de login de usuário", function () {
  cy.visit("/login");
});

Given("possuo um usuário cadastrado no sistema", function () {
  cy.get("@usuarioCriado");
});

When("informar o e-mail", function () {
  cy.get("@usuarioCriado").then(function (usuario) {
    paginaLogin.typeEmail(usuario.body.email);
  });
});

When("informar a senha", function () {
  paginaLogin.typeSenha("123456");
});

When("acessar a função login", function () {
  paginaLogin.clickButtonLogar();
});

When("não informar o e-mail", function () {});

When("não informar a senha", function () {});

When("informar o e-mail {string} inválido", function (email) {
  paginaLogin.typeEmail(email);
});
When("informar a senha {string} inválida", function (senha) {
  paginaLogin.typeSenha(senha);
});

When("informar o e-mail {string} não cadastrado", function (email) {
  paginaLogin.typeEmail(email);
});

When("informar a senha {string} não cadastrada", function (senha) {
  paginaLogin.typeSenha(senha);
});

Then(
  "o usuário será logado com sucesso e direcionado para página inicial do sistema",
  function () {
    cy.url().should(
      "eq",
      "https://raromdb-frontend-c7d7dc3305a0.herokuapp.com/"
    );
  }
);

Then("o sistema exibirá a mensagem de erro {string}", function (mensagem) {
  cy.get(paginaLogin.labelErroEmail).should("contain", mensagem);
});

Then(
  "o usuário não será logado e não será direcionado para página inicial do sistema",
  function () {
    cy.url().should(
      "not.eq",
      "https://raromdb-frontend-c7d7dc3305a0.herokuapp.com/"
    );
  }
);

Then("o sistema exibirá o alerta de erro {string}", function (mensagem) {
  cy.get(paginaLogin.labelFalhaAutenticar).should(
    "contain",
    "Falha ao autenticar"
  );
  cy.get(paginaLogin.labelUsuarioInválido).should("contain", mensagem);
  paginaLogin.clickButtonOk();
});
