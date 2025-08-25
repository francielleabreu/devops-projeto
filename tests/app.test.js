const { soma } = require('../src/app');

test('soma 2 + 2 deve ser 4', () => {
  expect(soma(2, 2)).toBe(4);
});

test('soma 5 + 3 deve ser 8', () => {
  expect(soma(5, 3)).toBe(8);
});

