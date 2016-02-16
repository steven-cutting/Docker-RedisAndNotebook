FROM jupyter/notebook:latest

RUN pip2 install redis
RUN pip install redis

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888

ENTRYPOINT ["tini", "--"]
CMD ["jupyter", "notebook"]
