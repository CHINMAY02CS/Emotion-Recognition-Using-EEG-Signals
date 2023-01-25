clear;
features = zeros(1280,193);

% declaration of variables
%f = 128;  % this value is representing the sample frequency.
%y = 1:128;
row = 1;

% looping through all the file to collect data
for i = 1:32
    
    if (i < 10)
        load(['s0' num2str(i) '.mat']);
    else
        load(['s' num2str(i) '.mat']);
    end
        
        % arousal and valence are vectors to label their class.
        arousal = squeeze(labels(:, 1));
        valence = squeeze(labels(:, 2));
        
        
        % when a file gets loaded now we have to go through all trials
        % inside the file provided.
        for j = 1:40
            
       
           column = 1;
            
           for k=1:32
                
                % these are the column vectors for collecting the colummn 4th and column 23rd for each trials 
                channel = squeeze(data(j, k, :));
                %c4 = squeeze(data(j, 23, :));
                features(row,column)=mean(channel);
                features(row,32+column)=var(channel);
                features(row,64+column)=std(channel);
                features(row,96+column)=kurtosis(channel);
                features(row,128+column)=skewness(channel);
                features(row,160+column)=zerocrossrate(channel);
                               
                column=column+1;
           end

           if labels(j,1)>4.5
               if labels(j,2)>4.5
                 features(row,193)=1;
              else
                  features(row,193)=2;
               end
            
          else
             if labels(j,2)>4.5
                  features(row,193)=3;
             else
                features(row,193)=4;
              end
           end
             
            row = row + 1;
        end
end

    
