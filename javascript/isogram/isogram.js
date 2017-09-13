var Isogram = function (phrase) {
  this.letters = phrase.match(/\w/g)
}

Isogram.prototype.isIsogram = function () {
  return this.letters
    .every((e, ei) => !this.letters.some((s, si) => e === s && ei !== si))
}

module.exports = Isogram
