var Bob = function () {}

Bob.prototype.hey = function (input) {
  if (isEmpty(input)) return "Fine. Be that way!"
  if (isQuestion(input)) return "Sure."
  if (isYelling(input)) return "Whoa, chill out!" 
  return "Whatever."
}

const isEmpty = input => input.trim() === ""
const isQuestion = input => input.endsWith('?')
const isYelling = input => (input.toUpperCase() === input) && (input.toLowerCase() !== input)

module.exports = Bob
