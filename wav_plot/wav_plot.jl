using WAV
using Plots

# Function to read and plot the .wav file
function plot_wav(file_path)
    # Read the .wav file
    audio, fs = wavread(file_path)

    # Create time vector
    t = collect(0:length(audio)-1) / fs

    # Plot the waveform
    plot(t, audio, xlabel="Time (s)", ylabel="Amplitude", title="Waveform of WAV File")
    savefig("waveform_plot.png")
end

# Call the function with your .wav file path
plot_wav("sample.wav")
