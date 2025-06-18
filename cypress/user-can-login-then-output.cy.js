describe('User can login to system the output', () => {
before(() => {
    cy.log('runs once before all test in the block');
  });
beforeEach(() => {
  cy.log("runs before each test in the block");
});
after(() => {
  cy.log("runs once after all test in the block");
});
afterEach(() => {
  cy.log("runs after each test in the block");
});

  it('user can login with valid username and password', () => {
    cy.visit('http://localhost:8000/');
    // cy.get('[data-id="email"]').type("superadmin@gmail.com");
    // cy.get('[data-id="password"]').type("password");
    // cy.get('[data-id="submit"]').click();
    // cy.get('[data-id="username"]').click();
    // cy.get('[data-id="logout-btn"]').click();

    /* ==== Generated with Cypress Studio ==== */
    cy.get(':nth-child(2) > .form-control').type('superadmin@gmail.com');
    cy.get(':nth-child(3) > .form-control').type('password');
    cy.get('.btn').click();
    cy.get('.nav-link > .d-sm-none').click();
    cy.get('.text-danger').click();
    /* ==== End Cypress Studio ==== */
  });

  it('user can logout', () => {
  // arrange
  cy.visit('http://localhost:8000/');
  // cy.get('[data-id="email"]').type("superadmin@gmail.com");
  // cy.get('[data-id="password"]').type("password");
  // cy.get('[data-id="submit"]').click();
  // cy.get('[data-id="username"]').click();
  // cy.get('[data-id="logout-btn"]').click();

  cy.get(':nth-child(2) > .form-control').type('superadmin@gmail.com');
  cy.get(':nth-child(3) > .form-control').type('password');
  cy.get('.btn').click();
  cy.get('.nav-link > .d-sm-none').click();
  cy.get('.text-danger').click();
  });
})