using Plots
using LaTeXStrings

# Define the semi-major and semi-minor axes
a = 5
b = 3

# Define the parametric equations for the ellipse
theta = 0:0.01:2pi
x = a * cos.(theta)
y = b * sin.(theta)

# Create the plot
plot(x, y, label="", xlabel="x", ylabel="y", title=L"\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1", aspect_ratio=1)

# Save the plot as an image
savefig("ellipse_plot.png")
