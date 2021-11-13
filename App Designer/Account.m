classdef Account < handle;
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Balance = 0
    end
    
    methods
        function addMoney(obj,amount)
            obj.Balance = obj.Balance + amount;
        end
        
        function remMoney(obj,amount)
            if amount <= obj.Balance
            obj.Balance = obj.Balance - amount;
            else
                disp('Insufficient Funds')
            end
        end
    end
end

