numOfStudents=5;
marks=zeros(1,numOfStudents);

for i=1:numOfStudents
    marks(i)=input(['Enter the marks ',num2str(i),':\n']);

    if marks(i)>=90
        fprintf('Grade: A\n');

    elseif marks(i)>=80
        fprintf('Grade: B\n');

    elseif marks(i)>=70
        fprintf('Grade: C\n');

    elseif marks(i)>=60
        fprintf('Grade: D\n');

    else
        fprintf('Grade: F\n');
    end
end

while true
    fprintf('1.Show all marks as a bar chart:\n');
    fprintf('2.Show average marks:\n');
    fprintf('3.Exit:\n');

    selection=input('Enter your selection(1-4): ');

    switch selection
        case 1
            bar(marks);
            title('Student Marks');
            xlabel('Student Number');
            ylabel('Marks');
            grid on;
        case 2
            avgMarks = mean(marks);
            fprintf('Average marks: %.2f\n', avgMarks);
        case 3
            fprintf('Thank you!\n');
            break;
        otherwise
            fprintf('Invalid selection! Please enter a valid selection.\n');
    end

end
