describe('User can login to system', () => {
  // Positive test case
  it.only('user can login with valid username and passwor', () => {
    //arrange
    cy.visit('http://localhost:8000/');
    //act
    //select element html yang di butuhkan
    //kalo sudah dapat elemennya mau di apakan
    cy.get(':nth-child(2) > .form-control').type('superadmin@gmail.com');
    //select element html yang dibutuhkan
    //kalo sudah dapat elementnya mau diapakan?
    cy.get(':nth-child(3) > .form-control').type('password');
    cy.get('.btn').click();
    //assert
    //select element html yang dibutuhkan
    //lakukan assertion sesuai test case
    cy.get('.nav-link > .d-sm-none').should('have.text', 'Hi, SuperAdmin');
  });

it('user cannot login with valid username and invalid password', () =>{
  //arrange
  cy.visit('http://localhost:8000/');
  //act
  cy.get(':nth-child(2) > .form-control').type('superadmin@gmail.com');
  cy.get(':nth-child(3) > .form-control').type('password-salah');
  cy.get('.btn').click();
  // assertion
  cy.get('.invalid-feedback').should('have.text', 'These credentials do not match our records.');
})
it('user cannot with invalid username and valid password', () =>{
  //arrange
  cy.visit('http://localhost:8000/');
  //act
  cy.get(':nth-child(2) > .form-control').type('superadmin-salah@gmail.com');
  cy.get(':nth-child(3) > .form-control').type('password');
  cy.get('.btn').click();
  //assertion
  cy.get('.invalid-feedback').should('have.text', 'These credentials do not match our records.');
});

it('user cannot with empty username and valid password', () =>{
  //arrange
  cy.visit('http://localhost:8000/');
  //act
  cy.get(':nth-child(2) > .form-control').type(' ');
  cy.get(':nth-child(3) > .form-control').type('password');
  cy.get('.btn').click();
  //assertion
  cy.get('.invalid-feedback').should('have.text', 'The email field is required.');
});

it('user cannot with valid username and empty password', () =>{
  //arrange
  cy.visit('http://localhost:8000/');
  //act
  cy.get(':nth-child(2) > .form-control').type('superadmin@gmail.com');
  cy.get(':nth-child(3) > .form-control').type(' ');
  cy.get('.btn').click();
  //assertion
  cy.get('.invalid-feedback').should('have.text', 'The password field is required.');
});

it('user cannot with empty username and empty password', () =>{
  //arrange
  cy.visit('http://localhost:8000/');
  //act
  cy.get(':nth-child(2) > .form-control').type(' ');
  cy.get(':nth-child(3) > .form-control').type(' ');
  cy.get('.btn').click();
  //assertion
  cy.get(':nth-child(2) > .invalid-feedback').should('have.text', 'The email field is required.');
  cy.get(':nth-child(3) > .invalid-feedback').should('have.text', 'The password field is required.');
});

  });
