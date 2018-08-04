FROM arm32v7/debian:9

COPY --from=wzaldivararmhf/arm-provider:v1.0.1 /arm-provider/bin /usr/bin/

COPY --from=wzaldivararmhf/arm-provider:v1.0.1 /arm-provider/s6_overlay /

COPY --from=wzaldivararmhf/arm-provider:v1.0.1 /arm-provider/probe_files /

ENV PROBE_FILES_LIST="" \
    PROBE_FILES_INTERVAL=300

ENTRYPOINT [ "/init" ]
