# Load the base image
# Image come from here: https://hub.docker.com/_/gcc
FROM gcc:4.9

# Copy all the files to the working directory
COPY . /src/NFDRScliV4
COPY ./src /src/NFDRScliV4

# Set create an Environment Variable for passing the Configuration file
ENV NAME INCFG

# Set the working directory to compile the config4cpp
WORKDIR /src/NFDRScliV4
RUN tar xvf config4cpp.tar
WORKDIR /src/NFDRScliV4/config4cpp
RUN mkdir /usr/include/config4cpp
RUN cp /src/NFDRScliV4/config4cpp/include/config4cpp/* /usr/include/config4cpp
ENV LD_LIBRARY_PATH /src/NFDRScliV4/config4cpp/lib
RUN make clean
RUN make

# Build the command line 
WORKDIR /src/NFDRScliV4/
RUN make clean
RUN make

# Run the NFDRScli command line and pass the INCFG environment variable
CMD /src/NFDRScliV4/NFDRScliV4 $INCFG