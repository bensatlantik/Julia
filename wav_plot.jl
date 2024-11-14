using WAV
using Plots

# Function to read and plot the .wav file
function plot_wav(file_path)
    # Read the .wav file
    audio, fs = WAV.wavread(file_path)

    # Ensure audio data is a vector (flatten if multi-channel)
    if ndims(audio) > 1
        audio = vec(audio)
    end

    # Create time vector
    t = collect(0:length(audio)-1) / fs

    # Downsample the data for plotting if necessary
    max_points = 10000
    step = max(1, div(length(audio), max_points))
    t_plot = t[1:step:end]
    audio_plot = audio[1:step:end]

    # Plot the waveform
    plot(t_plot, audio_plot, xlabel="Time (s)", ylabel="Amplitude", title="Waveform of WAV File", legend=false)

    # Save the plot as an image
    savefig("waveform_plot.png")
    println("Plot saved as waveform_plot.png")
end

# Call the function with your .wav file path
plot_wav("sample.wav")
