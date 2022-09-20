FROM python:3.11-rc-alpine

LABEL maintainer="Anthony Paulin <paulin.anthony@gmail.com>"

ENV ROBOT_TESTS_DIR=/tests
ENV ROBOT_REPORTS_DIR=/results

RUN pip install robotframework==5.0 && \
    pip install robotframework-requests && \
    pip install robotframework-lint

# Validate the test with a linter, then run it
CMD rflint ${ROBOT_TESTS_DIR}/* || robot --xunit result.xml -d ${ROBOT_REPORTS_DIR} ${ROBOT_TESTS_DIR}