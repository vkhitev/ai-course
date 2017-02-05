const a = [1, [2, 2, 3], 4, [3, 2, 3], 5]
const b = [3, 2, 3, 2]

const car = (a) => a[0]
const cdr = (a) => a.slice(1)
const eq = (a, b) => a === b
const cons = (a, b) => [a, ...b]

const filter = (p, a) => eq(undefined, car(a))
  ? []
  : p(car(a))
    ? cons(car(a), filter(p, cdr(a)))
    : filter(p, cdr(a))

const x = filter((val) => {
  return (!Array.isArray(val))
}, a)

const areEqualSets = (a, b)

console.log(x)
