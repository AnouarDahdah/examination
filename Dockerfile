# Use the official OpenFOAM image with ParaView
FROM openfoam/openfoam7-paraview56:latest

# Set the working directory to /home/openfoam
WORKDIR /home/openfoam

# Copy the contents of the current directory into the container at /home/openfoam
COPY . /home/openfoam

# OpenFOAM environment setup is handled by the base image

# Command to run when the container starts
CMD ["bash"]
