#!/bin/sh

mkdir -p "${UNIVERSAL_BUILD_DIR}"
cp "${BUILT_PRODUCTS_DIR}/${EXECUTABLE_NAME}" "${UNIVERSAL_BUILD_DIR}/${EXECUTABLE_NAME}" || exit 1

if [ -d "${BUILT_PRODUCTS_DIR}/usr/local/include" ]
then
    mkdir -p "${UNIVERSAL_BUILD_DIR}/usr/local/include"
    cp "${BUILT_PRODUCTS_DIR}/usr/local/include/"* "${UNIVERSAL_BUILD_DIR}/usr/local/include"
fi
