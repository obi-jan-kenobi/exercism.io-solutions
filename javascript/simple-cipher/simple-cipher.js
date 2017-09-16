'use strict'

const charToNumber = (c) => c.charCodeAt(0) % 97
const numberToChar = (num) => String.fromCharCode(num + 97)

const map2 = (fn, arr1, arr2) => arr1.length <= arr2.length 
  ? arr1.map((x, i) => fn(x, arr2[i]))
  : arr2.map((x, i) => fn(arr1[i], x))

function Cypher (key) {
  this.key = key || 'aaaaaaaaaa'
}

Cypher.prototype.encode = function (phrase) {
  const splitkey = this.key.split('')
  const splitphrase = phrase.split('')
  return map2((k, p) => {
    const ck = charToNumber(k)
    const cp = charToNumber(p)
    return String.fromCharCode(ck + cp)
  }, splitkey, splitphrase).join('')
}

Cypher.prototype.decode = function (phrase) {
  const splitkey = this.key.split('')
  const splitphrase = phrase.split('')
  return map2((k, p) => {
    const ck = charToNumber(k)
    const cp = charToNumber(p)
    return String.fromCharCode(cp - ck)
  }, splitkey, splitphrase).join('')
}

