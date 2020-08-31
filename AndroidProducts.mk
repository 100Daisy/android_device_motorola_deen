#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_deen.mk
    $(LOCAL_DIR)/ancient_deen.mk \
    $(LOCAL_DIR)/du_deen.mk \
    $(LOCAL_DIR)/ion_deen.mk

COMMON_LUNCH_CHOICES := \
    aosp_deen-user \
    aosp_deen-userdebug \
    aosp_deen-eng \
    ancient_deen-user \
    ancient_deen-userdebug \
    ancient_deen-eng \
    du_deen-user \
    du_deen-userdebug \
    du_deen-eng \
    ion_deen-user \
    ion_deen-userdebug \
    ion_deen-eng
