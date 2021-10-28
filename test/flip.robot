*** Settings ***
Documentation           Flip Technical Test
Resource                ${EXECDIR}/common/config.robot
Resource                ${EXECDIR}/common/keyword/common_keyword.robot
Resource                ${EXECDIR}/keyword/web/shipper_bos_web/account/flip.robot
Default Tags            flip
Force Tags              disabled
Test Teardown           Close Local Browser or Browser Stack

*** Variables ***
${csv-login}            ${EXECDIR}/data/web/shipper_bos_web/csv/account/qasir_login.csv

*** Test Cases ***
Flip - Bantuan Menu
        GIVEN User open flip
        WHEN User click bantuan menu
        THEN User verify bantuan menu

Flip - Karir Menu
        GIVEN User open flip
        WHEN User click karir menu
        THEN User verify karir menu

Flip - Biaya Menu
        GIVEN User open flip
        WHEN User click biaya menu
        THEN User verify biaya menu

Flip - Masuk menu
        GIVEN User open flip
        WHEN User click masuk menu
        THEN User verify masuk menu