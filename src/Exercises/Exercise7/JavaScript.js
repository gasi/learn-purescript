function bind(n /* n: number | null */, next /* (x: number | null): number */) {
  if (n === null) {
    return null
  } else {
    return next(n)
  }
}

exports.addXY_ = function(
  nullOrX /*: number | null */,
  nullOrY /*: number | null */
) {
  return bind(nullOrX, function(x) {
    return bind(nullOrY, function(y) {
      return x + y
    })
  })
}
