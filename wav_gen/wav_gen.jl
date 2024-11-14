using WAV

# Parameters for the sine wave
fs = 44100        # Sampling frequency (samples per second)
duration = 4.0    # Duration in seconds
frequency = 220.0 # Frequency of the sine wave in Hz

# Generate the time vector
t = collect(0:1/fs:duration - 1/fs) # Time vector for 4 seconds

# Generate the sine wave at 220 Hz
sine_wave = 0.5 * sin.(2 * π * frequency * t)  # Amplitude scaled to 0.5 for safety

# Save the sine wave as a .wav file
wavwrite(sine_wave, fs, "sine_220Hz_4sec.wav")

println("Sine wave generated and saved as sine_220Hz_4sec.wav")
