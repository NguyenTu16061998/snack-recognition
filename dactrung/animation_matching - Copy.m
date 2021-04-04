function [distances, class, idx] = sokhopmau(k)
    data = xlsread('X.xlsx');
    [m, n] = size(data);
    item = data(k, :);
    
    for i = 1:m
        distance = 0;
        for j = 1:n
            distance = distance + (item(j) - data(i, j))^2;
        end
        distance = sqrt(distance);
        distances(i) = distance;
    end

    min = intmax;
    idx = 0;

    for i = 1:m
        if (distances(i) < min) & (distances(i) > 0)
            min = distances(i);
            idx = i;
        end
    end
    class = data(idx, 8);
end