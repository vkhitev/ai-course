function twoDimArray (height, width, filler = null) {
  return Array(height).fill().map(() => Array(width).fill(null))
}

function randomInt (min, max) {
  return Math.floor(Math.random() * (max - min)) + min
}

function uniqueGenerator (maxAmount, randomFn) {
  const s = new Set()
  return function (amount) {
    if (s.size + amount > maxAmount) {
      throw new Error('Too many values, can not be unique')
    }
    let inserted = 0
    let values = []
    while (inserted !== amount) {
      const randomVal = randomFn()
      if (!s.has(randomVal)) {
        s.add(randomVal)
        values.push(randomVal)
        inserted += 1
      }
    }
    return values
  }
}

class Cave {
  constructor (height, width, goldBags, deadGirls) {
    this.grid = twoDimArray(height, width)

    const rand = randomInt.bind(null, 1, height * width)
    const generator = uniqueGenerator(height * width - 1, rand)

    const positions = {
      'Viy': generator(1),
      'goldBags': generator(goldBags),
      'deadGirls': generator(deadGirls)
    }
    console.log(positions)
  }
}

new Cave(4, 4, 2, 3)
