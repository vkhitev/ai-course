const data = require('./data')

const getRealVariant = (variant, rawData) =>
  variant % Object.keys(rawData).length

const variant = getRealVariant(30, data)

const myData = data[variant]
console.log(myData)
