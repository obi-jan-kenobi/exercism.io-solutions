var Pangram = function (phrase) {
  this.phrase = phrase
}

Pangram.prototype.isPangram = function () {
  let charCodes = []
  for (let i = 65; i < 91; i++) {
    charCodes.push(i)
  }
  const letters = this.phrase.match(/\w/gi)
  console.log(letters)
  return letters ? charCodes.every(e => letters.map(e => e.charCodeAt(0)).includes(e)) : false
}

module.exports = Pangram
