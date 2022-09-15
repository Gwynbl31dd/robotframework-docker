FROM ppodgorsek/robot-framework

LABEL maintainer="apaulin <paulin.anthony@gmail.com>"

ENV ROBOT_TESTS_DIR=/tests
ENV ROBOT_REPORTS_DIR=/results

# We use root to have full access
# This is not a good practice, but the container is up only during the test
# Which is supposed to be short
USER root

RUN pip install robotframework-requests
RUN pip install --upgrade robotframework-lint

# Validate the test with a linter, then run it
CMD rflint ${ROBOT_TESTS_DIR}/* || robot --xunit result.xml -d ${ROBOT_REPORTS_DIR} ${ROBOT_TESTS_DIR}