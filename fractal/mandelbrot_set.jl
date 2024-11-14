using Plots

# Define the function to check if a point is in the Mandelbrot set
function mandelbrot(c, max_iter)
    z = c
    for n in 1:max_iter
        if abs(z) > 2
            return n
        end
        z = z^2 + c
    end
    return max_iter
end

# Set the parameters for the plot
xlims = (-2.5, 1.5)
ylims = (-2.0, 2.0)
resolution = 1000
max_iter = 100

# Generate the points
x = range(xlims[1], xlims[2], length=resolution)
y = range(ylims[1], ylims[2], length=resolution)

# Create an array to store the results
mandelbrot_set = [mandelbrot(complex(re, im), max_iter) for im in y, re in x]

# Plot the Mandelbrot set
heatmap(x, y, mandelbrot_set, color=:magma, title="Mandelbrot Set")
savefig("mandelbrot_set.png")
