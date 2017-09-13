var Words = function () {}

Words.prototype.count = function (phrase) {
  return phrase.match(/\w+/gi).reduce((prev, curr) => {
    prev[curr] = prev[curr]++ || 1
    return prev
  }, {})
}

module.exports = Words
