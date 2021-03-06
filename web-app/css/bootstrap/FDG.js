
function removeA(arr) {
    var what, a = arr, L = a.length, index = 0;
    while (index<= a.length-1) {
        if(a[index].values.length < 3)
	{
	  a.splice(index, 1);
	}else{
        index++;}
    }
    
    return a;
  }


var width = 500,
    h = 300,
    height = 500;
	 
var color = d3.scale.category20();



var svg = d3.select(".span10").append("svg")
    .attr("width", width)
    .attr("height", height);


d3.json("../../data/json/g_mRNA.json", function(error, graph) {
  
var force1 = d3.layout.force()
    .charge(-120)
    .linkDistance(30)
    .gravity(.5)
    .size([width, height])
    .nodes(graph.nodes)
    .links(graph.links)
    .start();

  var groups = d3.nest().key(function(d) { return d.group; }).entries(graph.nodes);
  
  groups = removeA(groups);

  var link = svg.selectAll(".link")
      .data(graph.links)
    .enter().append("line")
      .attr("class", "link")
      .style("stroke-width", function(d) { return Math.sqrt(d.value)/3; });

  var node = svg.selectAll(".node")
      .data(graph.nodes)
    .enter().append("circle")

      .attr("class", "node")
      .attr("r", 5)
      .style("fill", function(d) { return color(d.group); })
      .call(force1.drag);

  node.append("title")
      .text(function(d) { return d.name; });


  var groupPath = function(d) {
    return "M" + 
      	d3.geom.hull(d.values.map(function(i) 
	   { 
		return [i.x, i.y]; 
            }
         )).join("L") 
		+ "Z";
  };

  var groupFill = function(d) { 
	return color(d.values[0].group); 
  };

 /* vis.style("opacity", 1e-6)
  .transition()
    .duration(1000)
    .style("opacity", 1);
*/
  force1.on("tick", function() {
    link.attr("x1", function(d) { return d.source.x; })
        .attr("y1", function(d) { return d.source.y; })
        .attr("x2", function(d) { return d.target.x; })
        .attr("y2", function(d) { return d.target.y; });

    node.attr("cx", function(d) { return d.x; })
        .attr("cy", function(d) { return d.y; });

    svg.selectAll("path")
      .data(groups)
        .attr("d", groupPath)
      .enter().insert("path", "circle")
        .style("fill", groupFill)
        .style("stroke", groupFill)
        .style("stroke-width", 40)
        .style("stroke-linejoin", "round")
        .style("opacity", .2)
        .attr("d", groupPath);  

  });



});


//http://bl.ocks.org/mbostock/3355967 make it resizeable



