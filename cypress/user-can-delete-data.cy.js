describe('User can delete data', () => {
  // before each test case
  beforeEach(() => {
    //reset database using cypress command
    cy.exec("cd C:/Users/PAVILION/Documents/projects/studycypress/demo-app-cypress-automation && php artisan migrate:fresh --seed" );
    //ararange
    cy.visit('http://localhost:8000/');
    //act
    cy.get(':nth-child(2) > .form-control').type("superadmin@gmail.com");
    cy.get(':nth-child(3) > .form-control').type('password');
    cy.get('.btn').click();
    cy.get(':nth-child(2) > .has-dropdown > .fas').click();
    cy.get('.active > .dropdown-menu > li > .nav-link').click();
  })
  it('user can delete data', () => {
  cy.get("tr td").contains('user')  // Cari teks 'User'
  .parents('tr')  // Cari elemen tr yang mengandung teks 'User'
  .find('button.confirm-delete')  // Cari tombol delete
  .should('be.visible')  // Pastikan tombol terlihat
  .click();  // Klik tombol delete

// Verifikasi bahwa modal konfirmasi muncul
cy.get('.swal-modal').should('be.visible');

// Klik tombol konfirmasi dalam modal
cy.get(".swal-button-container").find('button').contains('OK').click();
//cy.get('.swal-button--confirm').click();
    // cy.get('.swal-button--cancel').click();
    // cy.get('.card-header-action > .btn-icon').click();
    // /* ==== Generated with Cypress Studio ==== */
    // cy.get('#name').clear('Selena Gomez');
    // cy.get('#name').type('Selena Gomez');
    // cy.get('#email').clear('selenagomez@gmail.com');
    // cy.get('#email').type('selenagomez@gmail.com');
    // cy.get('#password').type('cypress');
    // cy.get('.btn-primary').click();
    // cy.get(':nth-child(4) > .text-right > .d-flex > .ml-2 > .btn').click();
    // cy.get(':nth-child(2) > .swal-button').click();

    // /* ==== End Cypress Studio ==== */
    // /* ==== Generated with Cypress Studio ==== */

    cy.get('p').should('be.visible');
    cy.get('p').should('have.text', 'User Deleted Successfully');
    // /* ==== End Cypress Studio ==== */

    cy.get('.table').should('not.contain', 'user'); // Verifikasi bahwa data 'user' tidak ada lagi
  });

  it("user can cancel delete data", () => {
    //arrange
    //act
    cy.get("tr td")
    .contains('user')
    .parents()
    .find('button')
    .contains('Delete')
    .click();

    // make sure sweet alert is visible
    cy.get(".swal-button-container").find('button').contains('Cancel').click();
    //assert
    cy.get('.table td').contains('user').should('be.visible'); // Verifikasi bahwa data 'user' masih ada
    /* ==== Generated with Cypress Studio ==== */
    // cy.get(':nth-child(3) > .text-right > .d-flex > .ml-2 > .btn').click();
    // cy.get(':nth-child(1) > .swal-button').click();
    /* ==== End Cypress Studio ==== */
    /* ==== Generated with Cypress Studio ==== */
    // cy.get('tbody > :nth-child(3) > :nth-child(2)').should('be.visible');
    // cy.get('tbody > :nth-child(3) > :nth-child(2)').should('have.text', 'user');
    /* ==== End Cypress Studio ==== */
  })
})