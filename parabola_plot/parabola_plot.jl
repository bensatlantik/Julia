using Plots

# Define the function
f(x) = 2x^2

# Define the range for x
x = -10:0.1:10

# Calculate y values
y = f.(x)

# Create the plot
plot(x, y, label="y = 2x^2", xlabel="x", ylabel="y", title="Plot of y = 2x^2")

# Save the plot as an image
savefig("parabola_plot.png")
