'use strict';

describe('BMF', function() {
  it('should redirect to admin page when enter correct username and password', function() {
    browser().navigateTo('/new/#/login');
    input('credentials.username').enter('bmfsupport');
    input('credentials.password').enter('vlx6alxg');
    element('#submit').click();
    sleep(3); // waiting for rendering
    expect(browser().window().path()).toBe('/office/');
    browser().navigateTo('/logout/');
    sleep(3);
    element('#submit').click();
    sleep(3);
  });
  xit('should display error message when enter incorrect username or password', function() {
    browser().navigateTo('/new/#/login');
    input('credentials.username').enter('a wrong username');
    input('credentials.password').enter('a wrong password');
    element('#submit').click();
    sleep(3);
    expect(element('form[name=form] p.error').text()).toBe('Unknown user name or password for arp, ui, dd');
  });

  afterEach(function() {
    
  });
});
