.class public Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "CanonMakernoteDirectory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory$AFInfo;,
        Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory$Panorama;,
        Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory$ShotInfo;,
        Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory$FocalLength;,
        Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory$CameraSettings;
    }
.end annotation


# static fields
.field private static final TAG_AF_INFO_ARRAY:I = 0x12

.field public static final TAG_AF_INFO_ARRAY_2:I = 0x26

.field public static final TAG_AF_POINTS_IN_FOCUS_1D:I = 0x94

.field public static final TAG_AMBIANCE_INFO_ARRAY:I = 0x4020

.field public static final TAG_ASPECT_INFO_ARRAY:I = 0x9a

.field public static final TAG_BLACK_LEVEL:I = 0x4008

.field public static final TAG_CAMERA_INFO_ARRAY:I = 0xd

.field private static final TAG_CAMERA_SETTINGS_ARRAY:I = 0x1

.field public static final TAG_CANON_CUSTOM_FUNCTIONS_ARRAY:I = 0xf

.field public static final TAG_CANON_FILE_LENGTH:I = 0xe

.field public static final TAG_CANON_FIRMWARE_VERSION:I = 0x7

.field public static final TAG_CANON_FLAGS_ARRAY:I = 0xb0

.field public static final TAG_CANON_IMAGE_NUMBER:I = 0x8

.field public static final TAG_CANON_IMAGE_TYPE:I = 0x6

.field public static final TAG_CANON_OWNER_NAME:I = 0x9

.field public static final TAG_CANON_SERIAL_NUMBER:I = 0xc

.field public static final TAG_CATEGORIES:I = 0x23

.field public static final TAG_COLOR_BALANCE_ARRAY:I = 0xa9

.field public static final TAG_COLOR_DATA_ARRAY_2:I = 0x4001

.field public static final TAG_COLOR_INFO_ARRAY:I = 0x4013

.field public static final TAG_COLOR_INFO_ARRAY_2:I = 0x4003

.field public static final TAG_COLOR_SPACE:I = 0xb4

.field public static final TAG_COLOR_TEMPERATURE:I = 0xae

.field public static final TAG_CROP_INFO:I = 0x98

.field public static final TAG_CRW_PARAM:I = 0x4002

.field public static final TAG_CUSTOM_FUNCTIONS_1D_ARRAY:I = 0x90

.field public static final TAG_CUSTOM_FUNCTIONS_ARRAY_2:I = 0x99

.field public static final TAG_CUSTOM_PICTURE_STYLE_FILE_NAME:I = 0x4010

.field public static final TAG_DATE_STAMP_MODE:I = 0x1c

.field public static final TAG_DUST_REMOVAL_DATA:I = 0x97

.field public static final TAG_FACE_DETECT_ARRAY_1:I = 0x24

.field public static final TAG_FACE_DETECT_ARRAY_2:I = 0x25

.field public static final TAG_FILE_INFO_ARRAY:I = 0x93

.field public static final TAG_FILTER_INFO_ARRAY:I = 0x4024

.field public static final TAG_FIRMWARE_REVISION:I = 0x1e

.field private static final TAG_FOCAL_LENGTH_ARRAY:I = 0x2

.field public static final TAG_IMAGE_UNIQUE_ID:I = 0x28

.field public static final TAG_LENS_INFO_ARRAY:I = 0x4019

.field public static final TAG_LENS_MODEL:I = 0x95

.field public static final TAG_LIGHTING_OPTIMIZER_ARRAY:I = 0x4018

.field public static final TAG_MEASURED_COLOR_ARRAY:I = 0xaa

.field public static final TAG_MODEL_ID:I = 0x10

.field public static final TAG_MODIFIED_INFO_ARRAY:I = 0xb1

.field public static final TAG_MOVIE_INFO_ARRAY:I = 0x11

.field public static final TAG_MY_COLORS:I = 0x1d

.field public static final TAG_ORIGINAL_DECISION_DATA_OFFSET:I = 0x83

.field private static final TAG_PANORAMA_ARRAY:I = 0x5

.field public static final TAG_PERSONAL_FUNCTIONS_ARRAY:I = 0x91

.field public static final TAG_PERSONAL_FUNCTION_VALUES_ARRAY:I = 0x92

.field public static final TAG_PREVIEW_IMAGE_INFO_ARRAY:I = 0xb6

.field public static final TAG_PROCESSING_INFO_ARRAY:I = 0xa0

.field public static final TAG_RAW_DATA_OFFSET:I = 0x81

.field public static final TAG_SENSOR_INFO_ARRAY:I = 0xe0

.field public static final TAG_SERIAL_INFO_ARRAY:I = 0x96

.field public static final TAG_SERIAL_NUMBER_FORMAT:I = 0x15

.field public static final TAG_SHARPNESS_FREQ_TABLE:I = 0xa3

.field public static final TAG_SHARPNESS_TABLE:I = 0xa2

.field private static final TAG_SHOT_INFO_ARRAY:I = 0x4

.field public static final TAG_SUPER_MACRO:I = 0x1a

.field public static final TAG_THUMBNAIL_IMAGE_VALID_AREA:I = 0x13

.field public static final TAG_TONE_CURVE_MATCHING:I = 0xb2

.field public static final TAG_TONE_CURVE_TABLE:I = 0xa1

.field public static final TAG_VIGNETTING_CORRECTION_ARRAY_1:I = 0x4015

.field public static final TAG_VIGNETTING_CORRECTION_ARRAY_2:I = 0x4016

.field public static final TAG_VRD_OFFSET:I = 0xd0

.field public static final TAG_WHITE_BALANCE_MATCHING:I = 0xb3

.field public static final TAG_WHITE_BALANCE_TABLE:I = 0xa4

.field protected static final _tagNameMap:Ljava/util/HashMap;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 496
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Firmware Version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Image Number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Image Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Owner Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Camera Serial Number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Camera Info Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File Length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Custom Functions"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon Model ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Movie Info Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Point Selected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc105

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Continuous Drive Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc10d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Contrast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc10b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Easy Shooting Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Exposure Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc11d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Flash Details"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Flash Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc119

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Focal Units per mm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Focus Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc120

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Focus Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc10a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Image Size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc110

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Iso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc117

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Long Focal Length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Macro Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc111

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Metering Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Saturation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Self Timer Delay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc10f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sharpness"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc118

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Short Focal Length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Quality"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown Camera Setting 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc108

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown Camera Setting 3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc109

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Record Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc10c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Digital Zoom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc112

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Focus Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc115

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown Camera Setting 7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc116

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Lens Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc11a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Max Aperture"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc11b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Min Aperture"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc11c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Flash Activity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc11e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Focus Continuous"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc11f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AE Setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Display Aperture"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc122

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Zoom Source Width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc123

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Zoom Target Width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc125

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Spot Metering Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc126

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Photo Effect"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc127

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Manual Flash Output"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc129

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Color Tone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SRAW Quality"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc207

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "White Balance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sequence Number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc20e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Point Used"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc20f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Flash Bias"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc210

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Auto Exposure Bracketing"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc211

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AEB Bracket Value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc213

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Subject Distance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc401

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Auto ISO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc402

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Base ISO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Measured EV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc404

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Target Aperture"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc405

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Target Exposure Time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc406

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Exposure Compensation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc407

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "White Balance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc408

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Slow Shutter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc409

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sequence Number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc40a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Optical Zoom Code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc40c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Camera Temperature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc40d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Flash Guide Number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc40e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Points in Focus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc40f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Flash Exposure Compensation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc410

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Auto Exposure Bracketing"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc411

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AEB Bracket Value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc412

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Control Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc413

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Focus Distance Upper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc414

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Focus Distance Lower"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc415

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F Number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc416

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Exposure Time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc417

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Measured EV 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc418

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bulb Duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc41a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Camera Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc41b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Auto Rotate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc41c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ND Filter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc41d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Self Timer 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc421

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Flash Output"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc502

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Panorama Frame Number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xc505

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Panorama Direction"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xd200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Point Count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xd201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Valid AF Point Count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xd202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Image Width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xd203

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Image Height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xd204

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Image Width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xd205

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Image Height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xd206

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Area Width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xd207

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Area Height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xd208

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Area X Positions"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xd209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Area Y Positions"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xd20a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Points in Focus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xd20b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Primary AF Point 1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xd20c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Primary AF Point 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Thumbnail Image Valid Area"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Serial Number Format"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Super Macro"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Date Stamp Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "My Colors"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Firmware Revision"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Categories"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Face Detect Array 1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Face Detect Array 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Info Array 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Image Unique ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Data Offset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Original Decision Data Offset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Custom Functions (1D) Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Personal Functions Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x92

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Personal Function Values Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File Info Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x94

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Points in Focus (1D)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Lens Model"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Serial Info Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Dust Removal Data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Crop Info"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Custom Functions Array 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Aspect Information Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing Information Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xa1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Tone Curve Table"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xa2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sharpness Table"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xa3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sharpness Frequency Table"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xa4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "White Balance Table"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xa9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Color Balance Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Measured Color Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Color Temperature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xb0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon Flags Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xb1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Modified Information Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xb2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Tone Curve Matching"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xb3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "White Balance Matching"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Color Space"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xb6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Preview Image Info Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xd0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VRD Offset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sensor Information Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x4001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Color Data Array 1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x4002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CRW Parameters"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x4003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Color Data Array 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x4008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Black Level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x4010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Custom Picture Style File Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x4013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Color Info Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x4015

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Vignetting Correction Array 1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x4016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Vignetting Correction Array 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x4018

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Lighting Optimizer Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x4019

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Lens Info Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x4020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Ambiance Info Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x4024

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Filter Info Array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 671
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 672
    new-instance v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;-><init>(Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    const-string v0, "Canon Makernote"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 686
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public setObjectArray(ILjava/lang/Object;)V
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 694
    instance-of v0, p2, [I

    if-nez v0, :cond_0

    .line 696
    invoke-super {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 794
    invoke-super {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 752
    :sswitch_0
    check-cast p2, [I

    .line 753
    aget p1, p2, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 755
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_8

    const v3, 0xd200

    add-int/2addr v3, v2

    const v4, 0xd208

    if-eq v3, v4, :cond_5

    const v4, 0xd209

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    const v4, 0xd20a

    if-ne v3, v4, :cond_4

    add-int/lit8 v4, p1, 0xf

    .line 774
    div-int/lit8 v4, v4, 0x10

    new-array v4, v4, [S

    .line 777
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    array-length v6, v4

    add-int/2addr v6, v1

    if-lt v5, v6, :cond_3

    const/4 v5, 0x0

    .line 779
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    add-int v6, v1, v5

    .line 780
    aget v6, p2, v6

    int-to-short v6, v6

    aput-short v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 782
    :cond_2
    invoke-super {p0, v3, v4}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 784
    :cond_3
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v1, v3

    goto :goto_4

    .line 787
    :cond_4
    aget v4, p2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-super {p0, v3, v4}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    goto :goto_4

    .line 762
    :cond_5
    :goto_2
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    add-int v5, v1, p1

    if-lt v4, v5, :cond_7

    .line 764
    new-array v4, p1, [S

    const/4 v5, 0x0

    .line 765
    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_6

    add-int v6, v1, v5

    .line 766
    aget v6, p2, v6

    int-to-short v6, v6

    aput-short v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 768
    :cond_6
    invoke-super {p0, v3, v4}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    :cond_7
    add-int/lit8 v3, p1, -0x1

    add-int/2addr v1, v3

    :goto_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    :sswitch_1
    check-cast p2, [I

    .line 725
    :goto_5
    array-length p1, p2

    if-ge v0, p1, :cond_8

    const p1, 0xc500

    add-int/2addr p1, v0

    .line 726
    aget v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 718
    :sswitch_2
    check-cast p2, [I

    .line 719
    :goto_6
    array-length p1, p2

    if-ge v0, p1, :cond_8

    const p1, 0xc400

    add-int/2addr p1, v0

    .line 720
    aget v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 712
    :sswitch_3
    check-cast p2, [I

    .line 713
    :goto_7
    array-length p1, p2

    if-ge v0, p1, :cond_8

    const p1, 0xc200

    add-int/2addr p1, v0

    .line 714
    aget v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 706
    :sswitch_4
    check-cast p2, [I

    .line 707
    :goto_8
    array-length p1, p2

    if-ge v0, p1, :cond_8

    const p1, 0xc100

    add-int/2addr p1, v0

    .line 708
    aget v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method
