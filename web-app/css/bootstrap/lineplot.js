var margin = {top: 20, right: 20, bottom: 30, left: 50},
    width = 400 - margin.left - margin.right,
    height = 200 - margin.top - margin.bottom;

var x = d3.scale.linear()
    .range([0, width]);

var y = d3.scale.linear()
    .range([height, 0]);

var xAxis = d3.svg.axis()
    .scale(x)
    .orient("bottom");

var yAxis = d3.svg.axis()
    .scale(y)
    .orient("left");

var line = d3.svg.line()
    .x(function(d) { return x(d.time); })
    .y(function(d) { return y(d.suvival_probability); });

var svg = d3.select("body").append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

var dataset = []
d3.csv("surv.csv", function(data) {
   //dataset = data.map(function(d) { return [ +d["time"], +d["suvival_probability"] ]; });
   //console.log(dataset);
   data.forEach(function(d) {
    d.time = +d.time;
    d.suvival_probability = +d.suvival_probability;
  });
  
   x.domain(d3.extent(data, function(d) { return d.time; }));
  	y.domain(d3.extent(data, function(d) { return d.suvival_probability; }));
  	
  	svg.append("g")
      .attr("class", "x axis")
      .attr("transform", "translate(0," + height + ")")
      .call(xAxis);
   
   svg.append("g")
      .attr("class", "y axis")
      .call(yAxis)
    .append("text")
      .attr("transform", "rotate(-90)")
      .attr("y", 6)
      .attr("dy", ".71em")
      .style("text-anchor", "end")
      .text("survivor probability");
    
    svg.append("path")
      .datum(data)
      .attr("class", "line")
      .attr("d", line);
});