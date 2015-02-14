`import DebugEx from '../utils/debug-ex'`
`import manhattanPaths from './manhattan-paths'`
`import normalizePoint from './normalize-point'`

makeCostMetric = (goal) ->
  (node) -> 1

makeHeruistic = (goal) ->
  g = normalizePoint goal
  (start) ->
    0 - manhattanPaths(normalizePoint(start), g).length

makePriorityMetric = (goal) ->
  cost = makeCostMetric(goal)
  heruistic = makeHeruistic(goal)
  (state) -> cost(state) + heruistic(state)

# uses a* with manhattan distance
graphSearch = (start: start, successor: successor, goal: goal) ->
  [xf,yf] = normalizePoint goal
  priority = makePriorityMetric [xf,yf]
  frontierQueue = new PriorityQueue 
    comparator: (a,b) -> priority(b) - priority(a)
  graphSearchCore
    options:
      count: 0
      maxCount: 500
    queue: frontierQueue
    successor: successor
    start: start
    priority: priority
    goalCheck: (node) -> 
      [xi,yi] = normalizePoint node
      throw new BadFormatError(node) unless xi? and yi?
      xi is xf and yi is yf

graphSearchCore = (queue: queue, successor: successor, start: start, wasAt: wasAt, goalCheck: goalCheck, priority: priority, options: options) ->
  throw new MaxIterationCountReached() if options.count > options.maxCount
  throw new RetardedPositionError(start) unless checkReasonability(start)
  options.count += 1
  return start if goalCheck start
  children = successor(start, wasAt)
  queue.queue child for child in children
  if queue.length > 0
    next = queue.dequeue()
    [].concat(start).concat graphSearchCore
      queue: queue
      start: next
      wasAt: start
      successor: successor
      goalCheck: goalCheck
      priority: priority
      options: options
  else
    return []

checkReasonability = (point) ->
  [x,y] = normalizePoint point
  _.isFinite(x) and _.isFinite(y)

class MaxIterationCountReached extends Error
  name: "MaxIterationCountReached"
  message: "I'm fucking done, you stupid shit. Your problem is either impossible or I'm just too fucking dumb to solve it. Fuck you."
class RetardedPositionError extends Error
  name: "RetardedPositionError"
  construtor: (node) ->
    @message = "the point you gave me has some retarded numbers"
    window.debugObj = node
class BadFormatError extends Error
  name: "BadFormatError"
  construtor: (node) ->
    @message = "I don't know how to extract x,y from the object you passed in"

`export default graphSearch`
