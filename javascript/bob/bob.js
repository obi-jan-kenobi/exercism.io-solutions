var Bob = function () {}

Bob.prototype.hey = function (input) {
  if (isEmpty(input)) return "Fine. Be that way!"
  if (isYelling(input)) return "Whoa, chill out!"
  if (isQuestion(input)) return "Sure."
  return "Whatever."
}

const isEmpty = input => input.trim() === ""
const isQuestion = input => input.endsWith('?')
const isYelling = input => (input.toUpperCase() === input) && (input.toLowerCase() !== input)

module.exports = Bob
