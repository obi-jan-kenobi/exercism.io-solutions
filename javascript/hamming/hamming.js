var Hamming = function () {}

Hamming.prototype.compute = function (strandOne, strandTwo) {
  var strandArrayOne = strandOne.split('')
  var strandArrayTwo = strandTwo.split('')
  if (strandArrayOne.length !== strandArrayTwo.length) {
    throw new Error('DNA strands must be of equal length.')
  }
  return strandArrayOne.reduce(function (prev, curr, index) {
    if (curr !== strandArrayTwo[index]) return prev + 1
    else return prev
  }, 0)
}

module.exports = Hamming
