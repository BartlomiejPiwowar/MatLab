**Monte Carlo Pi Visualization – Estimating π Using Monte Carlo**

**(Monte Carlo Pi Visualization)** is a C++ based application that uses the Monte Carlo method to estimate the value of π. The program generates random points within a unit square and then determines whether each point lies inside or outside of a quarter circle inscribed within the square. By calculating the ratio of points inside the circle to the total number of points, we can estimate the value of π. This simulation is visually presented in subplots for various sample sizes, illustrating how the estimate improves as the number of samples increases.

🧩 Key Features
- Monte Carlo Simulation: Random points are generated and classified as inside or outside the unit circle.
- Visualization: Graphical display of the points, showing those inside the circle (in blue) and outside the circle (in red).
- Circle Plot: The unit circle is plotted over the square to visually indicate the region used in the estimation.
- Multiple Samples: The program visualizes the estimation for several sample sizes (100, 1000, 10000, and 100000).
- Estimation of π: The calculated estimate of π is displayed on each subplot along with the number of points.

🔧 Technologies Used
- Matlab/Octave: Used for numerical computing and visualization.
- Monte Carlo Simulation: Method for estimating mathematical constants through random sampling.

📁 Main Functions
- monte_carlo_pi_visualization(): Visualizes the Monte Carlo method for estimating π by running simulations for different sample sizes and displaying the results on subplots.
- monte_carlo_pi(n): Performs the Monte Carlo simulation for a given number of random samples n, returning the estimated value of π along with the coordinates of the points and a boolean array indicating whether each point lies inside the circle.
