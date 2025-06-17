%% Write the MATLAB code to import a graph.Use the following source and destination data
%% Using the imported data,draw the graph
%% Write the matlab code to find and display the subgraph for the given nodes
%% Identify and display the adjacent vertices for each node
%% Label the edges of the graph
%% Label the nodes of the graph
%% Write the matlab code to color the graph(Graph coloring)\
%% Write the code to find the shortest path from node 1 to node 5
%% source=[1,1,2,3,4]  destination=[2,3,4,4,5]


%% Import and define the graph
s = [1 1 2 3 4];
d = [2 3 4 4 5];

G = graph(s, d);

%% Draw the original graph with labels
figure;
h = plot(G, 'Layout', 'force');
title('Original Graph');
labelnode(h, 1:numnodes(G), 1:numnodes(G));
labeledge(h, G.Edges.EndNodes(:,1), G.Edges.EndNodes(:,2), 1:numedges(G));

%% Display adjacent vertices
fprintf('\nAdjacent vertices for each node:\n');
for node = 1:numnodes(G)
    adj = neighbors(G, node);
    fprintf('Node %d is connected to: ', node);
    fprintf('%d ', adj);
    fprintf('\n');
end

%% Display a subgraph (nodes 1 to 4)
subNodes = [1, 2, 3, 4];
G_sub = subgraph(G, subNodes);
figure;
plot(G_sub, 'Layout', 'force');
title('Subgraph with nodes 1 to 4');

%% Random Graph Coloring using randi (1 to 5)
node_colors = randi([1 5], numnodes(G), 1); % Random color IDs from 1 to 5

figure;
plot_G = plot(G, 'NodeCData', node_colors, 'MarkerSize', 7, 'EdgeColor', 'k');
labelnode(plot_G, 1:numnodes(G), 1:numnodes(G)); % Node labels
colorbar; % Show color scale
title('Graph Coloring (Random Colors)');

%% Find and display shortest path from node 1 to node 5
[spath, len] = shortestpath(G, 1, 5);
disp(['Shortest path from node 1 to 5: ', mat2str(spath)]);
disp(['Path length: ', num2str(len)]);

figure;
h = plot(G, 'Layout', 'force');
highlight(h, spath, 'EdgeColor', 'r', 'LineWidth', 2);   % Path edges in red
highlight(h, spath, 'NodeColor', 'g', 'MarkerSize', 7);  % Path nodes in green
labelnode(h, 1:numnodes(G), 1:numnodes(G));              % Label nodes again
title('Shortest Path from Node 1 to Node 5');
