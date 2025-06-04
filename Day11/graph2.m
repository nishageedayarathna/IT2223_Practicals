S = [1 1 1 2 5 3 6 4 7 8 8 8];        % Source nodes
t = [2 3 4 5 3 6 4 7 2 6 7 5];        % Target nodes
weights = [100 10 10 10 10 20 10 30 50 10 70 10];  % Edge weights

G = digraph(S, t, weights);          % Create directed graph with weights

plot(G,'EdgeLabel', G.Edges.Weight,'NodeColor', 'r');   % Make nodes red
