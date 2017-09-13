var Bob = function () {}

Bob.prototype.hey = function (input) {
  var numbers = input.match(/\d/)
  var specialchars = input.match(/,/g)
  var check = input.replace(/,/g, '')
    .replace(/\d/g, '')
    .replace(/\s/g, '')
  if (specialchars && numbers && !check) return 'Whatever.'
  if (!check && !numbers) return 'Fine. Be that way!'
  if (check.length === 1 && check[0] === '?') return 'Sure.'
  if (check === check.toUpperCase()) return ('Whoa, chill out!')
  if (check.charAt(check.length - 1) === '?') return 'Sure.'
  return 'Whatever.'
}

module.exports = Bob
