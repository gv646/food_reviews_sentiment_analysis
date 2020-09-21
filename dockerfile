FROM python:3.7.6
WORKDIR /code
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
# RUN apk add --no-cache gcc musl-dev linux-headers
RUN pip install pandas
RUN pip install numpy
RUN pip install scikit-learn
RUN pip install beautifulSoup4
RUN pip install lxml
RUN pip install flask
# RUN pip install re
EXPOSE 5000
COPY . .
CMD ["flask", "run"]
