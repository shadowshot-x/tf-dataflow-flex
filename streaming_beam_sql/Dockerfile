FROM gcr.io/dataflow-templates-base/java11-template-launcher-base

ARG WORKDIR=/dataflow/template
RUN mkdir -p ${WORKDIR}
RUN mkdir -p ${WORKDIR}/src/main/java/org/apache/beam/samples
WORKDIR ${WORKDIR}

COPY pom.xml .
COPY StreamingBeamSql.java  /dataflow/template/src/main/java/org/apache/beam/samples/

ENV FLEX_TEMPLATE_JAVA_MAIN_CLASS="org.apache.beam.samples.StreamingBeamSql"
ENV FLEX_TEMPLATE_JAVA_CLASSPATH="${WORKDIR}/src/main/java/org/apache/beam/samples/StreamingBeamSql.java"

ENTRYPOINT ["/opt/google/dataflow/java_template_launcher"]