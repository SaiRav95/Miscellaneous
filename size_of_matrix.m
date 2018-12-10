%%%Question 4%%%%

function [outputArg1] = size_of_matrix(n)

% n = 100;

x = randi([0,1],n);

grid on

for generations = 1:1000
    y = zeros(n,n);
    
    
    
    for i = 1:n
        
        for j = 1:n
            
            count_alive_for_alive_cell = 0;
            
            count_alive_for_dead_cell = 0;
            
            
            for p = -1:1
                
                for q = -1:1
                    
                    if p==0 && q==0
                        
                        continue
                        
                    end
                    
                    if x(i,j) == 1
                        
                        if x(mod(i+p-1,n)+1,mod(j+q-1,n)+1) == 1
                              
                            count_alive_for_alive_cell = count_alive_for_alive_cell + 1;
                              end
                        elseif x(i,j) == 0
                            
                            if x(mod(i+p-1,n)+1,mod(j+q-1,n)+1) ==1
                                
                                count_alive_for_dead_cell = count_alive_for_dead_cell + 1;
                                
                            end
                      
                    end
                end
            end
            
        
            
            if count_alive_for_alive_cell < 2
                y(i,j) = 0;
                
            elseif 2 <= count_alive_for_alive_cell && count_alive_for_alive_cell <= 3
                y(i,j) = 1;
                
            elseif count_alive_for_alive_cell > 3
                
                y(i,j) = 0;
            end
            
            if count_alive_for_dead_cell == 3
                y(i,j) = 1;
            end
            
            
            
            
        end
    end
    
    x=y;
    

imagesc(y);

    drawnow;

end

end










































