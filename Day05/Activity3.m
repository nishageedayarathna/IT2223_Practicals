numVoters = input('Enter the total number of voters: ');

votes = zeros(1, 4); 

for voter = 1:numVoters
    fprintf('\nVoter %d,Enter your vote:\n', voter);
    fprintf('1. Candidate A\n2. Candidate B\n3. Candidate C\n4. Candidate D\n');
    selection = input('Enter your choice (1-4): ');
    
    switch selection
        case 1
            votes(1) = votes(1) + 1; 
        case 2
            votes(2) = votes(2) + 1;
        case 3
            votes(3) = votes(3) + 1;
        case 4
            votes(4) = votes(4) + 1;
        otherwise
            fprintf('Invalid vote!\n');
    end
end

fprintf('\nVote counts:\n');
fprintf('Candidate A: %d\n', votes(1));
fprintf('Candidate B: %d\n', votes(2));
fprintf('Candidate C: %d\n', votes(3));
fprintf('Candidate D: %d\n', votes(4));

[maxVotes, winnerIndex] = max(votes);
if sum(votes == maxVotes) > 1
    fprintf('It is a tie between candidates!\n');
else
    fprintf('The winner is Candidate %c with %d votes.\n', 'A' + winnerIndex - 1, maxVotes);
end

while true
    
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot (creative visualization)\n');
    fprintf('4. Exit\n');
    visSelection = input('Enter your choice (1-4): ');
    
    switch visSelection
        case 1
        
            bar(votes);
            title('Votes for Candidates');
            xlabel('Candidates (A, B, C, D)');
            ylabel('Number of Votes');
            set(gca, 'XTickLabel', {'A', 'B', 'C', 'D'});
            grid on;
            
        case 2
            
            pie(votes, {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            title('Vote Proportions');
            
        case 3
            
            scatter(1:4, votes, 100, 'filled');
            title('Creative Scatter Plot of Votes');
            xlabel('Candidates');
            ylabel('Votes');
            set(gca, 'XTick', 1:4, 'XTickLabel', {'A', 'B', 'C', 'D'});
            grid on;
            
        case 4
            fprintf('Exiting the visualization menu. Thank you!\n');
            break;
            
        otherwise
            fprintf('Invalid choice! Please try again.\n');
    end
end
