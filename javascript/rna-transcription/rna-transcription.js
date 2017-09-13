var DnaTranscriber = function () {}

DnaTranscriber.prototype.toRna = function (dnastring) {
  return dnastring.split('').map(function (elem) {
    switch (elem) {
      case 'G': return 'C'
      case 'C': return 'G'
      case 'T': return 'A'
      case 'A': return 'U'
      default: return elem
    }
  }).join('')
}

module.exports = DnaTranscriber
