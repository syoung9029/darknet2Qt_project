TEMPLATE = app

QT += qml quick widgets

TARGET = yoloV2
CONFIG += c++11
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += thread

INCLUDEPATH += /usr/local/include \
               /usr/local/include/opencv \
               /usr/local/include/opencv2

LIBS += -L/usr/local/lib -lopencv_core -lopencv_features2d -lopencv_flann \
        -lopencv_highgui -lopencv_imgcodecs -lopencv_imgproc -lopencv_ml -lopencv_objdetect \
        -lopencv_photo -lopencv_shape -lopencv_stitching -lopencv_superres -lopencv_videoio \
        -lopencv_video -lopencv_videostab

SOURCES += \
    ../../../chenfeng/darknet/src/yolo.c \
    ../../../chenfeng/darknet/src/writing.c \
    ../../../chenfeng/darknet/src/voxel.c \
    ../../../chenfeng/darknet/src/utils.c \
    ../../../chenfeng/darknet/src/tree.c \
    ../../../chenfeng/darknet/src/tag.c \
    ../../../chenfeng/darknet/src/swag.c \
    ../../../chenfeng/darknet/src/super.c \
    ../../../chenfeng/darknet/src/softmax_layer.c \
    ../../../chenfeng/darknet/src/shortcut_layer.c \
    ../../../chenfeng/darknet/src/route_layer.c \
    ../../../chenfeng/darknet/src/rnn.c \
    ../../../chenfeng/darknet/src/rnn_vid.c \
    ../../../chenfeng/darknet/src/rnn_layer.c \
    ../../../chenfeng/darknet/src/reorg_layer.c \
    ../../../chenfeng/darknet/src/region_layer.c \
    ../../../chenfeng/darknet/src/parser.c \
    ../../../chenfeng/darknet/src/option_list.c \
    ../../../chenfeng/darknet/src/normalization_layer.c \
    ../../../chenfeng/darknet/src/nightmare.c \
    ../../../chenfeng/darknet/src/network.c \
    ../../../chenfeng/darknet/src/maxpool_layer.c \
    ../../../chenfeng/darknet/src/matrix.c \
    ../../../chenfeng/darknet/src/local_layer.c \
    ../../../chenfeng/darknet/src/list.c \
    ../../../chenfeng/darknet/src/layer.c \
    ../../../chenfeng/darknet/src/image.c \
    ../../../chenfeng/darknet/src/im2col.c \
    ../../../chenfeng/darknet/src/gru_layer.c \
    ../../../chenfeng/darknet/src/go.c \
    ../../../chenfeng/darknet/src/gemm.c \
    ../../../chenfeng/darknet/src/dropout_layer.c \
    ../../../chenfeng/darknet/src/dice.c \
    ../../../chenfeng/darknet/src/detector.c \
    ../../../chenfeng/darknet/src/detection_layer.c \
    ../../../chenfeng/darknet/src/demo.c \
    ../../../chenfeng/darknet/src/deconvolutional_layer.c \
    ../../../chenfeng/darknet/src/data.c \
    ../../../chenfeng/darknet/src/darknet.c \
    ../../../chenfeng/darknet/src/cuda.c \
    ../../../chenfeng/darknet/src/crop_layer.c \
    ../../../chenfeng/darknet/src/crnn_layer.c \
    ../../../chenfeng/darknet/src/cost_layer.c \
    ../../../chenfeng/darknet/src/convolutional_layer.c \
    ../../../chenfeng/darknet/src/connected_layer.c \
    ../../../chenfeng/darknet/src/compare.c \
    ../../../chenfeng/darknet/src/col2im.c \
    ../../../chenfeng/darknet/src/coco.c \
    ../../../chenfeng/darknet/src/classifier.c \
    ../../../chenfeng/darknet/src/cifar.c \
    ../../../chenfeng/darknet/src/captcha.c \
    ../../../chenfeng/darknet/src/box.c \
    ../../../chenfeng/darknet/src/blas.c \
    ../../../chenfeng/darknet/src/batchnorm_layer.c \
    ../../../chenfeng/darknet/src/avgpool_layer.c \
    ../../../chenfeng/darknet/src/art.c \
    ../../../chenfeng/darknet/src/activations.c \
    ../../../chenfeng/darknet/src/activation_layer.c

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    ../../../chenfeng/darknet/src/network_kernels.cu \
    ../../../chenfeng/darknet/src/maxpool_layer_kernels.cu \
    ../../../chenfeng/darknet/src/im2col_kernels.cu \
    ../../../chenfeng/darknet/src/dropout_layer_kernels.cu \
    ../../../chenfeng/darknet/src/deconvolutional_kernels.cu \
    ../../../chenfeng/darknet/src/crop_layer_kernels.cu \
    ../../../chenfeng/darknet/src/convolutional_kernels.cu \
    ../../../chenfeng/darknet/src/col2im_kernels.cu \
    ../../../chenfeng/darknet/src/blas_kernels.cu \
    ../../../chenfeng/darknet/src/avgpool_layer_kernels.cu \
    ../../../chenfeng/darknet/src/activation_kernels.cu

HEADERS += \
    ../../../chenfeng/darknet/src/utils.h \
    ../../../chenfeng/darknet/src/tree.h \
    ../../../chenfeng/darknet/src/stb_image.h \
    ../../../chenfeng/darknet/src/stb_image_write.h \
    ../../../chenfeng/darknet/src/softmax_layer.h \
    ../../../chenfeng/darknet/src/shortcut_layer.h \
    ../../../chenfeng/darknet/src/route_layer.h \
    ../../../chenfeng/darknet/src/rnn_layer.h \
    ../../../chenfeng/darknet/src/reorg_layer.h \
    ../../../chenfeng/darknet/src/region_layer.h \
    ../../../chenfeng/darknet/src/parser.h \
    ../../../chenfeng/darknet/src/option_list.h \
    ../../../chenfeng/darknet/src/normalization_layer.h \
    ../../../chenfeng/darknet/src/network.h \
    ../../../chenfeng/darknet/src/maxpool_layer.h \
    ../../../chenfeng/darknet/src/matrix.h \
    ../../../chenfeng/darknet/src/local_layer.h \
    ../../../chenfeng/darknet/src/list.h \
    ../../../chenfeng/darknet/src/layer.h \
    ../../../chenfeng/darknet/src/image.h \
    ../../../chenfeng/darknet/src/im2col.h \
    ../../../chenfeng/darknet/src/gru_layer.h \
    ../../../chenfeng/darknet/src/gemm.h \
    ../../../chenfeng/darknet/src/dropout_layer.h \
    ../../../chenfeng/darknet/src/detection_layer.h \
    ../../../chenfeng/darknet/src/demo.h \
    ../../../chenfeng/darknet/src/deconvolutional_layer.h \
    ../../../chenfeng/darknet/src/data.h \
    ../../../chenfeng/darknet/src/cuda.h \
    ../../../chenfeng/darknet/src/crop_layer.h \
    ../../../chenfeng/darknet/src/crnn_layer.h \
    ../../../chenfeng/darknet/src/cost_layer.h \
    ../../../chenfeng/darknet/src/convolutional_layer.h \
    ../../../chenfeng/darknet/src/connected_layer.h \
    ../../../chenfeng/darknet/src/col2im.h \
    ../../../chenfeng/darknet/src/classifier.h \
    ../../../chenfeng/darknet/src/box.h \
    ../../../chenfeng/darknet/src/blas.h \
    ../../../chenfeng/darknet/src/batchnorm_layer.h \
    ../../../chenfeng/darknet/src/avgpool_layer.h \
    ../../../chenfeng/darknet/src/activations.h \
    ../../../chenfeng/darknet/src/activation_layer.h

CUDA_SOURCES += \
    ../../../chenfeng/darknet/src/network_kernels.cu \
    ../../../chenfeng/darknet/src/maxpool_layer_kernels.cu \
    ../../../chenfeng/darknet/src/im2col_kernels.cu \
    ../../../chenfeng/darknet/src/dropout_layer_kernels.cu \
    ../../../chenfeng/darknet/src/deconvolutional_kernels.cu \
    ../../../chenfeng/darknet/src/crop_layer_kernels.cu \
    ../../../chenfeng/darknet/src/convolutional_kernels.cu \
    ../../../chenfeng/darknet/src/col2im_kernels.cu \
    ../../../chenfeng/darknet/src/blas_kernels.cu \
    ../../../chenfeng/darknet/src/avgpool_layer_kernels.cu \
    ../../../chenfeng/darknet/src/activation_kernels.cu

CUDA_DIR = /usr/local/cuda-7.5

INCLUDEPATH += $$CUDA_DIR/include

OBJECTS_DIR = ./

LIBS += -L/usr/local/cuda-7.5/lib64 -lcudart -lcufft -lcuda -lcublas -lcurand

CUDA_ARCH = sm_30

NVCCFLAGS = --compiler-options -fno-strict-aliasing -use_fast_math --ptxas-options=-v

CUDA_INC = $$join(INCLUDEPATH,'" -I"','-I"','"')

cuda.input = CUDA_SOURCES

cuda.output = $$OBJECTS_DIR/${QMAKE_FILE_BASE}_cuda.o
# compile CUDA kernels using nvcc
cuda.commands = $$CUDA_DIR/bin/nvcc -m64 -g -G -arch=$$CUDA_ARCH -c  $$NVCCFLAGS $$CUDA_INC $$LIBS ${QMAKE_FILE_NAME} -o ${QMAKE_FILE_OUT} \
                2>&1 | sed -r \"s/\\(([0-9]+)\\)/:\\1/g\" 1>&2

QMAKE_EXTRA_COMPILERS += cuda
