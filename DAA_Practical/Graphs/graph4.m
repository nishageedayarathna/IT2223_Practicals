s = 1;
t = 2:6;
G = graph(s, t);  % Create a star graph with node 1 connected to 2,3,4,5,6

h = plot(G, 'Layout', 'force');  % Plot using force-directed layout

highlight(h, [1, 3], 'NodeColor', 'red');  % Color nodes 1 and 3 red
highlight(h, 1, 3, 'EdgeColor', 'magenta'); % Color edge between node 1 and 3 magenta
