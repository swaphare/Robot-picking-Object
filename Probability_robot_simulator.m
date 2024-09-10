function [ET] =  Project_Swaphare()
    
    D = [10 11 12 12 13 13 14 14 14 15 15 15 15 16 16 16 17 17 18 19]; %Array of distance
    
    c = []; 
    x = input("Enter 1 for strategy-1 and 3 for strategy-3 "); %Choose the strategy you are interested in.

    for p = [0.2,0.4] %To evaluate expected values with probabilities of 0.2 and 0.4
        for N=1:10000
            T = 0;
            Pos_robot = 0;
    
            Pos_object = D(randi(length(D))); %Choose random distance from array D

            while (Pos_object - Pos_robot) > 0
                random_number=rand; %Choose a random real number between 0 and 1
        
                if 0<=random_number && random_number<p %Object moving towards left
                    Pos_object = Pos_object-1;
                    Pos_robot = Pos_robot + 1;
                end
       
                if p <= random_number && random_number < 2*p %Object moving towards right
                    Pos_object = Pos_object + 1;
                    Pos_robot = Pos_robot + 1;
            
                end
                if x==1
                    if 2*p <= random_number && random_number< 1  %Object stopping but Robot moving
                    Pos_object = Pos_object;
                    Pos_robot = Pos_robot +1;
            
                    end
        
                elseif x==3
                if 2*p <= random_number && random_number< 1 %Object stopping and Robot stopping
                    Pos_object = Pos_object;
                    Pos_robot = Pos_robot;
            
                end
         
          
                end
    
                T = T +1; %Time increases by 1 unit
            end
    
            c(N) = T; 
    
    
        end
        ET=mean(c) %Expected value of time
        fprintf('The expected value at p= %f is : %f .\n', p,ET);
    
end
