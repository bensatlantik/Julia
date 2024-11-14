using Plots

# Define the radius
r = 5

# Define the parametric equations for the circle
theta = 0:0.01:2pi
x = r * cos.(theta)
y = r * sin.(theta)

# Create the plot
plot(x, y, label="Circle: x^2 + y^2 = $r^2", xlabel="x", ylabel="y", title="Plot of Circle", aspect_ratio=1)

# Save the plot as an image
savefig("circle_plot.png")
