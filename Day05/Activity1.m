balance=1000;

while true
    fprintf('1.Deposit\n');
    fprintf('2.Withdraw\n');
    fprintf('3.Balance Inquiry\n');
    fprintf('4.Exit\n');

    selection=input('Enter your selection(1-4): ');

    switch selection
        case 1
            depositAmount=input('Enter the deposit amount:');
            if depositAmount>0
                balance=balance+depositAmount;
                fprintf('You deposited $%.2f.\n',depositAmount);
            else
                fprintf('Error!,Invalid deposit');
            end

        case 2
            withdrawAmount=input('Enter the amount that you want to withdraw:');
            if withdrawAmount>0 
                if withdrawAmount<=balance
                   balance=balance-withdrawAmount;
                   fprintf('You withdrawed $%.2f.\n',withdrawAmount);

                else
                    fprintf('Insufficient funds to withdraw');
                end
            else
                fprintf('Error!,Invalid withdrawal');
            end

        case 3
            fprintf('Your balance is $%.2f.\n',balance);
        
        case 4
            fprintf('Your transaction completed! Thank you.');
            break;

        otherwise
            fprintf('Invalid Option,Please enter a valid option(1-4)');



    end

end