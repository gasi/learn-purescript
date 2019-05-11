function andThen(
  n /* n: number | null */,
  next /* (x: number | null): number */
) {
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
  return andThen(nullOrX, function(x) {
    return andThen(nullOrY, function(y) {
      return x + y
    })
  })
}
