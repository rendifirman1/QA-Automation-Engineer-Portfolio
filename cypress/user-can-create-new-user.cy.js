describe('Craete new user', () => {
  //before each test case
  beforeEach( () => {
  //arrange
  cy.visit('http://localhost:8000/');
  //reset database using cypress command
  cy.exec("cd C:/Users/PAVILION/Documents/projects/studycypress/demo-app-cypress-automation && php artisan migrate:fresh --seed").wait(5000);
  //act
  cy.get(':nth-child(2) > .form-control').type("superadmin@gmail.com");
  cy.get(':nth-child(3) > .form-control').type('password');
  cy.get('.btn').click();
  cy.get(':nth-child(2) > .has-dropdown > .fas').click();
  cy.get('.active > .dropdown-menu > li > .nav-link').click();
  cy.get('.card-header-action > .btn-icon').click();
});
  
  //positive test case
  it('user can create new user', () => {
    cy.get('#name').type('Selena Gomez');
    cy.get('#email').type('selenagomez@gmail.com');
    cy.get('#password').type('cypress');
    //assert    
    cy.get('.btn-primary').click();
    cy.get('p').should('be.visible');
    cy.get('p').should('have.text', 'Data Berhasil Ditambahkan');
  });

  //negative test case
  it('user canoot create new user because invalid email', () => {
    cy.get('#name').type('Harry Style');
    cy.get('#email').type('harrystyle');
    cy.get('#password').type('cypress');
    //assert 
    cy.get('.btn-primary').click();
    cy.get('.invalid-feedback').should('be.visible');
    cy.get('.invalid-feedback').should('contain', 'The email must be a valid email address.');
});

it('user cannot create new user because name is required', () => {
  cy.get('#email').type('justinbieber@gmail.com');
  cy.get('#password').type('cypress123');
  //assert
  cy.get('.btn-primary').click();
  cy.get('.invalid-feedback').should('be.visible');
  cy.get('.invalid-feedback').should('contain', 'The name field is required.');
});

it('user cannot create new user because password is required', () =>{
cy.get('#name').type('ariana grande');
cy.get('#email').type('arianagrande@gmail.com');
//assert 
cy.get('.btn-primary').click();
cy.get('.invalid-feedback').should('be.visible');
cy.get('.invalid-feedback').should('contain', 'The password field is required.');
});

it('user cannot create new user because email is required', () => {
cy.get('#name').type('Ed Sheren');
cy.get('#password').type('cypress');
//assert 
cy.get('.btn-primary').click();
cy.get('.invalid-feedback').should('be.visible');
cy.get('.invalid-feedback').should('contain', 'The email field is required.');
});

it('user cannot create new user because name,email and password is required', () => {
//assert 
cy.get('.btn-primary').click();
cy.get('.invalid-feedback').should('be.visible');
cy.get('.invalid-feedback').should('contain', 'The email field is required.');
cy.get('.invalid-feedback').should('contain', 'The name field is required.');
cy.get('.invalid-feedback').should('contain', 'The password field is required.');

});


})

  //negative test case