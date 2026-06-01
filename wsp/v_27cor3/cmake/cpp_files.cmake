#   *******************************************************************************
#   
#   mpfw / fw2 - Multi Platform FirmWare FrameWork 
#       library that contains the essential code that is used in every application
#   Copyright (C) (2023) Marco Dau
#   
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Affero General Public License as published
#   by the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#   
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU Affero General Public License for more details.
#   
#   You should have received a copy of the GNU Affero General Public License
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.
#   
#   You can contact me by the following email address
#   marco <d o t> ing <d o t> dau <a t> gmail <d o t> com
#   
#   *******************************************************************************

### ---------------------------
##
#   cpp_files.cmake
#
#   Created on: Aug, 26th 2025  (Tue)
#   Author: Marco Dau
##
### ---------------------------

include_guard()

    set(CURR_MOD_NAME       FNCT-CORE-3REAL)

    ## MODULE DIRECTORY Definitions
    set(KR_EVENT_DIR                        krEvent/v_${KR_EVENT_VER}                                   )
    set(KR_INIT_DIR                         krInit/v_${KR_INIT_VER}                                     )
    set(KR_INIT_STATIC_DIR                  krInitStatic/v_${KR_INIT_STATIC_VER}                        )
    set(KR_INIT_STATIC_WP_DIR				krInitStaticWP/v_${KR_INIT_STATIC_WP_VER}                   )
    set(KR_TIMER_DIR                        krTimer/v_${KR_TIMER_VER}                                   )

    set(SV_SYNC_DIR                         svSync/v_${SV_SYNC_VER}                                     )
    set(SV_STATE_DIR                        svState/v_${SV_STATE_VER}                                   )
    set(SV_STATE_MACHINE_DIR                svStateMachine/v_${SV_STATE_MACHINE_VER}                    )

    set(UY_PROTOCOL_DIR                     uyProtocol/v_${UY_PROTOCOL_VER}                             )
    set(UY_PROTOCOL2_DIR                    uyProtocol2/v_${UY_PROTOCOL2_VER}                           )

    set(DG_INTERFACE_DIR                    dgInterface/v_${DG_INTERFACE_VER}                           )
    set(DG_FORMAT_DIGIT_DIR                 dgFormatDigit/v_${DG_FORMAT_DIGIT_VER}                      )


    set(CODE_FILES_LIB_KR_EVENT
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/kr/${KR_EVENT_DIR}/krEvent.cpp
    )

    set(CODE_FILES_LIB_KR_INIT
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/kr/${KR_INIT_DIR}/krInit.cpp
    )

    set(CODE_FILES_LIB_KR_INIT_STATIC
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/kr/${KR_INIT_STATIC_DIR}/krInitStaticManager.cpp
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/kr/${KR_INIT_STATIC_WP_DIR}/krInitStaticWPManager.cpp
    )

    set(CODE_FILES_LIB_KR_TIMER
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/kr/${KR_TIMER_DIR}/krTimer.cpp
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/kr/${KR_TIMER_DIR}/KrTimerManager.cpp
    )

    set(CODE_FILES_LIB_SV_SYNC
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/sv/${SV_SYNC_DIR}/svSync.cpp
    )

    set(CODE_FILES_LIB_SV_STATE
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/sv/${SV_STATE_DIR}/svState.cpp
    )

    set(CODE_FILES_LIB_SV_STATE_MACHINE
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/sv/${SV_STATE_MACHINE_DIR}/svStateMachine.cpp
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/sv/${SV_STATE_MACHINE_DIR}/svStateMachineManager.cpp
    )

    set(CODE_FILES_LIB_UY_PROTOCOL
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/uy/${UY_PROTOCOL_DIR}/uyProtocol.cpp
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/uy/${UY_PROTOCOL2_DIR}/uyProtocol2.cpp
    )

    set(CODE_FILES_LIB_DG_INTERFACE
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/dg/${DG_INTERFACE_DIR}/dgInterface.cpp
    )

    set(CODE_FILES_LIB_DG_FORMAT_DIGIT
        ${${CURR_MOD_NAME}_cmmn_SRC_DIR}/dg/${DG_FORMAT_DIGIT_DIR}/dgFormatDigit.cpp
    )

    set(${CURR_MOD_NAME}_cmmn_SOURCE_FILES_CPP

        ${CODE_FILES_LIB_KR_EVENT}
        ${CODE_FILES_LIB_KR_INIT}
        ${CODE_FILES_LIB_KR_INIT_STATIC}
        ${CODE_FILES_LIB_KR_TIMER}

        ${CODE_FILES_LIB_SV_SYNC}
        ${CODE_FILES_LIB_SV_STATE}
        ${CODE_FILES_LIB_SV_STATE_MACHINE}

        ${CODE_FILES_LIB_UY_PROTOCOL}
        ${CODE_FILES_LIB_DG_FORMAT_DIGIT}
        ${CODE_FILES_LIB_DG_INTERFACE}

    )

