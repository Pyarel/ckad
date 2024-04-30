# This line below states we will base our new image on the latest official image
FROM python:3.8-buster

# Identify the maintainer of the image
LABEL version="1.0.0"
LABEL maintainer="pyarelflouzia3737@gmail.com"

# Add python code
ADD create.py /

# Execute python script
CMD ["python3", "./create.py"]
