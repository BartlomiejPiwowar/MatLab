monte_carlo_pi_visualization()

function monte_carlo_pi_visualization()
    samples = [100, 1000, 10000, 100000]; % examples
    figure;
    
    for i = 1:length(samples)
        n = samples(i);
        [pi_estimate, x, y, inside] = monte_carlo_pi(n);
        
        subplot(2,2,i);
        hold on; 

        %points
        scatter(x(inside), y(inside), 5, 'b', 'filled'); % inside of circle
        scatter(x(~inside), y(~inside), 5, 'r', 'filled'); % outside of circle
        
        % circle
        theta = linspace(0, 2*pi, 300); 
        circle_x = cos(theta); 
        circle_y = sin(theta); 
        plot(circle_x, circle_y, 'b', 'LineWidth', 1);
        
        % layout
        title(sprintf('n = %d, π ≈ %.5f', n, pi_estimate));
        axis equal;
        xlim([0,1]); ylim([0,1]);
        xlabel('X'); ylabel('Y');

        hold off;
    end
end

function [pi_estimate, x, y, inside] = monte_carlo_pi(n)
    x = rand(n,1) * 2 - 1;
    y = rand(n,1) * 2 - 1;
    
    inside = (x.^2 + y.^2) <= 1;
    points_in_circle = sum(inside);
    
    pi_estimate = 4 * points_in_circle / n;
end