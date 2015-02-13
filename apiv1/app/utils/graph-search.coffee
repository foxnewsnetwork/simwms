`import manhattanPaths from './manhattan-paths'`

makeCostMetric = (goal) ->
  (node) -> 1

makeHeruistic = (x: xf, y: yf) ->
  (x: xi, y: yi) -> 
    0 - manhattanPaths([xi, yi], [xf, yf]).length

makePriorityMetric = (goal) ->
  cost = makeCostMetric(goal)
  heruistic = makeHeruistic(goal)
  (state) -> cost(state) + heruistic(state)

# uses a* with manhattan distance
graphSearch = (start: start, successor: successor, goal: goal) ->
  {x: xf, y: yf} = goal
  priority = makePriorityMetric goal
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
    goalCheck: (x: x, y: y) -> x is xf and y is yf

graphSearchCore = (queue: queue, successor: successor, start: start, goalCheck: goalCheck, priority: priority, options: options) ->
  throw new MaxIterationCountReached() if options.count > options.maxCount
  options.count += 1
  return start if goalCheck start
  queue.queue child for child in successor(start) # when priority(child) < priority(start)
  if queue.length > 0
    next = queue.dequeue()
    [].concat(start).concat graphSearchCore
      queue: queue
      start: next
      successor: successor
      goalCheck: goalCheck
      priority: priority
      options: options
  else
    return []

class MaxIterationCountReached extends Error
  name: "MaxIterationCountReached"
  message: "I'm fucking done, you stupid shit. Your problem is either impossible or I'm just too fucking dumb to solve it. Fuck you."

`export default graphSearch`
