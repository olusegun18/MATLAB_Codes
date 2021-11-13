classdef Account < handle;
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Balance = 0
    end
    
    methods
        function obj = addMoney(amount)
            %UNTITLED Construct an instance of this class
            %   Detailed explanation goes here
            Balance = Balance + Amount;
        end
        
        function obj = remMoney(amount)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            Balance = Balance - Amount;
        end
    end
end

