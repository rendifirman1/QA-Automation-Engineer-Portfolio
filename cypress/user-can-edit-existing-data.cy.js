describe('User Can Edit Existing Data', () => {
  // afterEach(() => {
  //   // Reset database using cypress command
  //   cy.exec("cd C:/Users/PAVILION/Documents/projects/studycypress/demo-app-cypress-automation && php artisan migrate:fresh --seed");
  // });

  beforeEach(() => {
    // reset database using cypress command
    cy.exec("cd C:/Users/PAVILION/Documents/projects/studycypress/demo-app-cypress-automation && php artisan migrate:fresh --seed");

    // arrange
    cy.visit('http://localhost:8000/');
    // act
    cy.get(':nth-child(2) > .form-control').type("superadmin@gmail.com");
    cy.get(':nth-child(3) > .form-control').type('password');
    cy.get('.btn').click();
    cy.visit('http://localhost:8000/user-management/user');
  });

  it('user can edit existing data', () => {
    cy.get(".table td")
      .contains('user')
      .parents('tr')
      .find('a')
      .contains('Edit')
      .click();
    cy.get('#name').clear();
    cy.get('#name').type('user edited');
    cy.get('.btn-primary').contains('Submit').click();
    cy.get('.table td').contains('user').should('have.text', 'user edited');
    cy.get('.alert')
    .should('be.visible')
    .and('have.class', 'alert-success')
    .and('contain', 'User Berhasil Diupdate');
  });

  it('user cannot edit with blank username', () => {
    cy.get(".table td")
      .contains('user')
      .parents('tr')
      .find('a')
      .contains('Edit')
      .click();
    cy.get('#name').clear();
    cy.get('.btn-primary').contains('Submit').click();
    cy.get('.invalid-feedback').should('contain', 'The name field is required.');
    cy.get('.invalid-feedback').should('have.class', 'invalid-feedback');
    cy.get('.invalid-feedback').should('be.visible');
  });

    it('user cannot edit data with blank email', () => {
    cy.get(".table td")
      .contains('user')
      .parents('tr')
      .find('a')
      .contains('Edit')
      .click();
    cy.get('#email').clear();
    cy.get('.btn-primary').contains('Submit').click();
    cy.get('.invalid-feedback').should('contain', 'The email field is required.');
    cy.get('.invalid-feedback').should('have.class', 'invalid-feedback');
    cy.get('.invalid-feedback').should('be.visible');
  
  });

      it('user cannot edit data with all blank fields', () => {
    cy.get(".table td")
      .contains('user')
      .parents('tr')
      .find('a')
      .contains('Edit')
      .click();
    cy.get('#name').clear();
    cy.get('#email').clear();
    cy.get('.btn-primary').contains('Submit').click();
    cy.get('#name').next().should('be.visible').and('have.class', 'invalid-feedback').and('contain', 'The name field is required.');
    cy.get('#email').next().should('be.visible').and('have.class', 'invalid-feedback').and('contain', 'The email field is required.');
  
  });
});