var Gigasecond = function (date) {
  this.dateToConvert = date
}

Gigasecond.prototype.date = function () {
  var convertedDate = new Date()
  convertedDate.setTime(this.dateToConvert.getTime() + 1000000000 * 1000)
  return convertedDate
}

module.exports = Gigasecond
