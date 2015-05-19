`import DebugEx from '../utils/debug-ex'`
`import manhattanPaths from './manhattan-paths'`
`import normalizePoint from './normalize-point'`

makeCostMetric = (goal) ->
  (node) -> 1

makeHeruistic = (goal) ->
  (start) ->
    manhattanPaths(start, goal).length

makePriorityMetric = (goal) ->
  cost = makeCostMetric(goal)
  heruistic = makeHeruistic(goal)
  (state) -> cost(state) + heruistic(state)

# uses a* with manhattan distance
graphSearch = (start: start, successor: successor, goal: goal) ->
  core = new GraphSearch goal: normalizePoint(goal)
  core.successor = (paths) ->
    [nowAt, wasAt, ...] = paths
    successor(nowAt, wasAt).map (next) ->
      [next, paths...]
  core.findPathTo [normalizePoint(start)]

isContinuous = ([x1,y1], pt2) ->
  return true unless pt2?
  [x2,y2] = pt2
  return true if x1 is x2 and y1 + 1 is y2
  return true if x1 is x2 and y1 - 1 is y2
  return true if x1 + 1 is x2 and y1 is y2
  return true if x1 - 1 is x2 and y1 is y2
  false

checkReasonability = (pt) ->
  [x,y] = pt
  _.isFinite(x) and _.isFinite(y)

class GraphSearch
  @maxCount = 100
  constructor: (start: start, goal: goal) ->
    @goal = goal
    @count = 0
    @astar = makePriorityMetric goal
    if Map?
      @sluts = new Map()
    else
      @sluts = Ember.Object.create()
  priority: (child) ->
    0 - @astar(child)
  goalCheck: (start) ->
    [xf,yf] = @goal
    [xi,yi] = start
    throw new BadFormatError(start) unless xi? and yi?
    xi is xf and yi is yf

  comparator: ([a, ...], [b, ...]) ->
    @priority(b) - @priority(a)

  isVirgin: ([child, ...]) ->
    not @sluts.get(@checksum child)
  queue: (paths) ->
    @frontierQueue ||= new PriorityQueue comparator: _.bind(@comparator, @)
    @frontierQueue.queue paths
    @sluts.set @checksum(paths[0]), true
  queueLength: ->
    @frontierQueue.length
  dequeue: ->
    @frontierQueue.dequeue()
  checksum: ([x,y]) ->
    "x@#{x},y@#{y}"
  successor: (paths) -> throw "NotImplemented"

  findPathTo: (paths) ->
    @count += 1
    return [] if Ember.isBlank paths
    [start, rest...] = paths
    throw new MaxIterationCountReached() if @count > GraphSearch.maxCount
    throw new RetardedPositionError(start) unless checkReasonability(start)
    throw new DiscontinuousError(paths) unless isContinuous(start, rest[0])
    return paths if @goalCheck start
    @successor paths
      .filter _.bind(@isVirgin, @)
      .map _.bind(@queue, @)
    if @queueLength() > 0
      ps = @dequeue()
      @findPathTo ps
    else
      []

class DiscontinuousError extends Error
  constructor: (paths) ->
    @name = "DiscontinuousError"
    @message = "Expected continuity, but didn't get it from #{paths[0]} and #{paths[1]}. Play with it at debugObj"
    window.debugObj = paths

class MaxIterationCountReached extends Error
  name: "MaxIterationCountReached"
  message: "I'm fucking done, you stupid shit. Your problem is either impossible or I'm just too fucking dumb to solve it. Fuck you."
class RetardedPositionError extends Error
  construtor: (node) ->
    @name = "RetardedPositionError"
    @message = "the point you gave me has some retarded numbers"
    window.debugObj = node
class BadFormatError extends Error
  construtor: (node) ->
    @name = "BadFormatError"
    @message = "I don't know how to extract x,y from the object you passed in. Play with it at debugObj"
    window.debugObj = node

`export default graphSearch`
