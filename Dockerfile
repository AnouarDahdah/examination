# Use the official OpenFOAM image with ParaView
FROM openfoam/openfoam7-paraview56:latest

# Set the working directory to /home/openfoam
WORKDIR /home/openfoam

# Copy the contents of the current directory into the container at /home/openfoam
COPY . /home/openfoam

# OpenFOAM environment setup is handled by the base image

    git clone https://github.com/AnouarDahdah/icoFoam.git && \
    cd icoFoam && \
    git checkout your_branch_or_commit && \
    wmake

# Run your OpenFOAM solver or test script
CMD ["icoFoam"]
