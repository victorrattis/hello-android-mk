
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# O nome do module, com este nome você pode adicionar em algum makefile para 
# adiciona-lo em uma arvore de compilação de algum produto.
LOCAL_MODULE := HelloApp

# Referencia os arquivo de codigo do modulo, nessa caso o apk.
LOCAL_SRC_FILES := app-debug.apk

LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional

# Especifica o certificado que irá assinar o APK depois de compilado. Alguns
# valores:
# 	- platform, o Apk irá ser assinado com a mesma assinatura que a plataforma
#	(Android SO);
# 	- PRESIGNED, Não irá assinar o APK por que ele já está assinado.
LOCAL_CERTIFICATE := PRESIGNED

# Quando true, o app vai ter privilegio de sistema e ele vai ser instalado em
# priv-app/. E false, um app normal e é instaldo em apps/
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)
