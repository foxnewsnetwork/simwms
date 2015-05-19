`import normalizePoint from './normalize-point'`

class DebugEx
  @logPaths = (paths, xrng, yrng) ->
    xrng ||= [-10..10]
    yrng ||= [10..-10]
    for y in yrng
      row = "#{Math.abs y}: "
      for x in xrng
        a = paths.find (point) -> 
          [xp, yp] = normalizePoint point
          x is xp and y is yp
        if a?
          row += "###"
        else
          row += "---"
      console.log row

  @l = (x) ->
    console.log x
    x

`export default DebugEx`
