**Note: work in progress**

Some in-browser visualization functions for WebPPL

Dependencies:
- webppl version 0.6.1 or higher
- webppl-editor commit 0b6fff8 or higher

Demo: http://probmods.github.io/webppl-viz/

Usage: include webppl-viz.js and webppl-viz.css in your page (along with webppl and webppl-editor), then you can do:

```js
viz.print(MH(function() { return {x: gaussian(0,1), y: beta(1,1)}}), 100)
// automatically visualize a (possibly multivariate) inference result using some heuristics
// (in this case, it shows the marginals on x and y as well as the joint)

viz.bar([1,2,3],[4,5,6]) // bar chart
viz.hist(repeat(10, flip)) // histogram
viz.scatter([1,2,3],[4,5,6]) // scatter plot
viz.density(repeat(1e2, function() { return gaussian(0,1) })) // density
```

Compiling:

```sh
make demo/webppl-viz.js
```

Watchified compiling (incrementally rebuilds after source files have updated):

```sh
make watch
```
