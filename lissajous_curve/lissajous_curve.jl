using Plots

# Define the parameters for the Lissajous curve
A = 1          # Amplitude in the x-direction
B = 1          # Amplitude in the y-direction
a = 3          # Frequency in the x-direction
b = 2          # Frequency in the y-direction
δ = π/2        # Phase shift

# Define the range for the parameter t
t = 0:0.01:2π

# Define the parametric equations for the Lissajous curve
x = A .* sin.(a .* t .+ δ)
y = B .* sin.(b .* t)

# Create the plot
plot(x, y, label="", xlabel="x", ylabel="y", title="Lissajous Curve", aspect_ratio=1)

# Save the plot as an image
savefig("lissajous_curve.png")
