.class public Landroid/support/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroid/support/media/ExifInterface$IfdType;,
        Landroid/support/media/ExifInterface$ExifTag;,
        Landroid/support/media/ExifInterface$ExifAttribute;,
        Landroid/support/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field public static final ALTITUDE_ABOVE_SEA_LEVEL:S = 0x0s

.field public static final ALTITUDE_BELOW_SEA_LEVEL:S = 0x1s

.field private static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field static final BYTE_ALIGN_II:S = 0x4949s

.field static final BYTE_ALIGN_MM:S = 0x4d4ds

.field public static final COLOR_SPACE_S_RGB:I = 0x1

.field public static final COLOR_SPACE_UNCALIBRATED:I = 0xffff

.field public static final CONTRAST_HARD:S = 0x2s

.field public static final CONTRAST_NORMAL:S = 0x0s

.field public static final CONTRAST_SOFT:S = 0x1s

.field public static final DATA_DEFLATE_ZIP:I = 0x8

.field public static final DATA_HUFFMAN_COMPRESSED:I = 0x2

.field public static final DATA_JPEG:I = 0x6

.field public static final DATA_JPEG_COMPRESSED:I = 0x7

.field public static final DATA_LOSSY_JPEG:I = 0x884c

.field public static final DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field public static final DATA_UNCOMPRESSED:I = 0x1

.field private static final DEBUG:Z = false

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field static final EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

.field public static final EXPOSURE_MODE_AUTO:S = 0x0s

.field public static final EXPOSURE_MODE_AUTO_BRACKET:S = 0x2s

.field public static final EXPOSURE_MODE_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_ACTION:S = 0x6s

.field public static final EXPOSURE_PROGRAM_APERTURE_PRIORITY:S = 0x3s

.field public static final EXPOSURE_PROGRAM_CREATIVE:S = 0x5s

.field public static final EXPOSURE_PROGRAM_LANDSCAPE_MODE:S = 0x8s

.field public static final EXPOSURE_PROGRAM_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_NORMAL:S = 0x2s

.field public static final EXPOSURE_PROGRAM_NOT_DEFINED:S = 0x0s

.field public static final EXPOSURE_PROGRAM_PORTRAIT_MODE:S = 0x7s

.field public static final EXPOSURE_PROGRAM_SHUTTER_PRIORITY:S = 0x4s

.field public static final FILE_SOURCE_DSC:S = 0x3s

.field public static final FILE_SOURCE_OTHER:S = 0x0s

.field public static final FILE_SOURCE_REFLEX_SCANNER:S = 0x2s

.field public static final FILE_SOURCE_TRANSPARENT_SCANNER:S = 0x1s

.field public static final FLAG_FLASH_FIRED:S = 0x1s

.field public static final FLAG_FLASH_MODE_AUTO:S = 0x18s

.field public static final FLAG_FLASH_MODE_COMPULSORY_FIRING:S = 0x8s

.field public static final FLAG_FLASH_MODE_COMPULSORY_SUPPRESSION:S = 0x10s

.field public static final FLAG_FLASH_NO_FLASH_FUNCTION:S = 0x20s

.field public static final FLAG_FLASH_RED_EYE_SUPPORTED:S = 0x40s

.field public static final FLAG_FLASH_RETURN_LIGHT_DETECTED:S = 0x6s

.field public static final FLAG_FLASH_RETURN_LIGHT_NOT_DETECTED:S = 0x4s

.field private static final FLIPPED_ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_CHUNKY:S = 0x1s

.field public static final FORMAT_PLANAR:S = 0x2s

.field public static final GAIN_CONTROL_HIGH_GAIN_DOWN:S = 0x4s

.field public static final GAIN_CONTROL_HIGH_GAIN_UP:S = 0x2s

.field public static final GAIN_CONTROL_LOW_GAIN_DOWN:S = 0x3s

.field public static final GAIN_CONTROL_LOW_GAIN_UP:S = 0x1s

.field public static final GAIN_CONTROL_NONE:S = 0x0s

.field public static final GPS_DIRECTION_MAGNETIC:Ljava/lang/String; = "M"

.field public static final GPS_DIRECTION_TRUE:Ljava/lang/String; = "T"

.field public static final GPS_DISTANCE_KILOMETERS:Ljava/lang/String; = "K"

.field public static final GPS_DISTANCE_MILES:Ljava/lang/String; = "M"

.field public static final GPS_DISTANCE_NAUTICAL_MILES:Ljava/lang/String; = "N"

.field public static final GPS_MEASUREMENT_2D:Ljava/lang/String; = "2"

.field public static final GPS_MEASUREMENT_3D:Ljava/lang/String; = "3"

.field public static final GPS_MEASUREMENT_DIFFERENTIAL_CORRECTED:S = 0x1s

.field public static final GPS_MEASUREMENT_INTERRUPTED:Ljava/lang/String; = "V"

.field public static final GPS_MEASUREMENT_IN_PROGRESS:Ljava/lang/String; = "A"

.field public static final GPS_MEASUREMENT_NO_DIFFERENTIAL:S = 0x0s

.field public static final GPS_SPEED_KILOMETERS_PER_HOUR:Ljava/lang/String; = "K"

.field public static final GPS_SPEED_KNOTS:Ljava/lang/String; = "N"

.field public static final GPS_SPEED_MILES_PER_HOUR:Ljava/lang/String; = "M"

.field static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_IFD:I = 0xd

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final IFD_OFFSET:I = 0x8

.field private static final IFD_THUMBNAIL_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final IFD_TYPE_EXIF:I = 0x1

.field private static final IFD_TYPE_GPS:I = 0x2

.field private static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final IFD_TYPE_PEF:I = 0x9

.field static final IFD_TYPE_PREVIEW:I = 0x5

.field static final IFD_TYPE_PRIMARY:I = 0x0

.field static final IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final IMAGE_TYPE_ARW:I = 0x1

.field private static final IMAGE_TYPE_CR2:I = 0x2

.field private static final IMAGE_TYPE_DNG:I = 0x3

.field private static final IMAGE_TYPE_JPEG:I = 0x4

.field private static final IMAGE_TYPE_NEF:I = 0x5

.field private static final IMAGE_TYPE_NRW:I = 0x6

.field private static final IMAGE_TYPE_ORF:I = 0x7

.field private static final IMAGE_TYPE_PEF:I = 0x8

.field private static final IMAGE_TYPE_RAF:I = 0x9

.field private static final IMAGE_TYPE_RW2:I = 0xa

.field private static final IMAGE_TYPE_SRW:I = 0xb

.field private static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/support/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroid/support/media/ExifInterface$ExifTag;

.field static final JPEG_SIGNATURE:[B

.field public static final LATITUDE_NORTH:Ljava/lang/String; = "N"

.field public static final LATITUDE_SOUTH:Ljava/lang/String; = "S"

.field public static final LIGHT_SOURCE_CLOUDY_WEATHER:S = 0xas

.field public static final LIGHT_SOURCE_COOL_WHITE_FLUORESCENT:S = 0xes

.field public static final LIGHT_SOURCE_D50:S = 0x17s

.field public static final LIGHT_SOURCE_D55:S = 0x14s

.field public static final LIGHT_SOURCE_D65:S = 0x15s

.field public static final LIGHT_SOURCE_D75:S = 0x16s

.field public static final LIGHT_SOURCE_DAYLIGHT:S = 0x1s

.field public static final LIGHT_SOURCE_DAYLIGHT_FLUORESCENT:S = 0xcs

.field public static final LIGHT_SOURCE_DAY_WHITE_FLUORESCENT:S = 0xds

.field public static final LIGHT_SOURCE_FINE_WEATHER:S = 0x9s

.field public static final LIGHT_SOURCE_FLASH:S = 0x4s

.field public static final LIGHT_SOURCE_FLUORESCENT:S = 0x2s

.field public static final LIGHT_SOURCE_ISO_STUDIO_TUNGSTEN:S = 0x18s

.field public static final LIGHT_SOURCE_OTHER:S = 0xffs

.field public static final LIGHT_SOURCE_SHADE:S = 0xbs

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_A:S = 0x11s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_B:S = 0x12s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_C:S = 0x13s

.field public static final LIGHT_SOURCE_TUNGSTEN:S = 0x3s

.field public static final LIGHT_SOURCE_UNKNOWN:S = 0x0s

.field public static final LIGHT_SOURCE_WARM_WHITE_FLUORESCENT:S = 0x10s

.field public static final LIGHT_SOURCE_WHITE_FLUORESCENT:S = 0xfs

.field public static final LONGITUDE_EAST:Ljava/lang/String; = "E"

.field public static final LONGITUDE_WEST:Ljava/lang/String; = "W"

.field static final MARKER:B = -0x1t

.field static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field public static final METERING_MODE_AVERAGE:S = 0x1s

.field public static final METERING_MODE_CENTER_WEIGHT_AVERAGE:S = 0x2s

.field public static final METERING_MODE_MULTI_SPOT:S = 0x4s

.field public static final METERING_MODE_OTHER:S = 0xffs

.field public static final METERING_MODE_PARTIAL:S = 0x6s

.field public static final METERING_MODE_PATTERN:S = 0x5s

.field public static final METERING_MODE_SPOT:S = 0x3s

.field public static final METERING_MODE_UNKNOWN:S = 0x0s

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final ORF_MAKER_NOTE_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final ORF_SIGNATURE_1:S = 0x4f52s

.field private static final ORF_SIGNATURE_2:S = 0x5352s

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final PEF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field public static final PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field public static final PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field public static final PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field public static final PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final RAF_INFO_SIZE:I = 0xa0

.field private static final RAF_JPEG_LENGTH_VALUE_SIZE:I = 0x4

.field private static final RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field public static final REDUCED_RESOLUTION_IMAGE:I = 0x1

.field public static final RENDERED_PROCESS_CUSTOM:S = 0x1s

.field public static final RENDERED_PROCESS_NORMAL:S = 0x0s

.field public static final RESOLUTION_UNIT_CENTIMETERS:S = 0x3s

.field public static final RESOLUTION_UNIT_INCHES:S = 0x2s

.field private static final ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RW2_SIGNATURE:S = 0x55s

.field public static final SATURATION_HIGH:S = 0x0s

.field public static final SATURATION_LOW:S = 0x0s

.field public static final SATURATION_NORMAL:S = 0x0s

.field public static final SCENE_CAPTURE_TYPE_LANDSCAPE:S = 0x1s

.field public static final SCENE_CAPTURE_TYPE_NIGHT:S = 0x3s

.field public static final SCENE_CAPTURE_TYPE_PORTRAIT:S = 0x2s

.field public static final SCENE_CAPTURE_TYPE_STANDARD:S = 0x0s

.field public static final SCENE_TYPE_DIRECTLY_PHOTOGRAPHED:S = 0x1s

.field public static final SENSITIVITY_TYPE_ISO_SPEED:S = 0x3s

.field public static final SENSITIVITY_TYPE_REI:S = 0x2s

.field public static final SENSITIVITY_TYPE_REI_AND_ISO:S = 0x6s

.field public static final SENSITIVITY_TYPE_SOS:S = 0x1s

.field public static final SENSITIVITY_TYPE_SOS_AND_ISO:S = 0x5s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI:S = 0x4s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI_AND_ISO:S = 0x7s

.field public static final SENSITIVITY_TYPE_UNKNOWN:S = 0x0s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL:S = 0x5s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL_LINEAR:S = 0x8s

.field public static final SENSOR_TYPE_NOT_DEFINED:S = 0x1s

.field public static final SENSOR_TYPE_ONE_CHIP:S = 0x2s

.field public static final SENSOR_TYPE_THREE_CHIP:S = 0x4s

.field public static final SENSOR_TYPE_TRILINEAR:S = 0x7s

.field public static final SENSOR_TYPE_TWO_CHIP:S = 0x3s

.field public static final SHARPNESS_HARD:S = 0x2s

.field public static final SHARPNESS_NORMAL:S = 0x0s

.field public static final SHARPNESS_SOFT:S = 0x1s

.field private static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field static final START_CODE:B = 0x2at

.field public static final SUBJECT_DISTANCE_RANGE_CLOSE_VIEW:S = 0x2s

.field public static final SUBJECT_DISTANCE_RANGE_DISTANT_VIEW:S = 0x3s

.field public static final SUBJECT_DISTANCE_RANGE_MACRO:S = 0x1s

.field public static final SUBJECT_DISTANCE_RANGE_UNKNOWN:S = 0x0s

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BODY_SERIAL_NUMBER:Ljava/lang/String; = "BodySerialNumber"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CAMARA_OWNER_NAME:Ljava/lang/String; = "CameraOwnerName"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GAMMA:Ljava/lang/String; = "Gamma"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_H_POSITIONING_ERROR:Ljava/lang/String; = "GPSHPositioningError"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO_SPEED:Ljava/lang/String; = "ISOSpeed"

.field public static final TAG_ISO_SPEED_LATITUDE_YYY:Ljava/lang/String; = "ISOSpeedLatitudeyyy"

.field public static final TAG_ISO_SPEED_LATITUDE_ZZZ:Ljava/lang/String; = "ISOSpeedLatitudezzz"

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LENS_MAKE:Ljava/lang/String; = "LensMake"

.field public static final TAG_LENS_MODEL:Ljava/lang/String; = "LensModel"

.field public static final TAG_LENS_SERIAL_NUMBER:Ljava/lang/String; = "LensSerialNumber"

.field public static final TAG_LENS_SPECIFICATION:Ljava/lang/String; = "LensSpecification"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOGRAPHIC_SENSITIVITY:Ljava/lang/String; = "PhotographicSensitivity"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final TAG_RAF_IMAGE_SIZE:Landroid/support/media/ExifInterface$ExifTag;

.field public static final TAG_RECOMMENDED_EXPOSURE_INDEX:Ljava/lang/String; = "RecommendedExposureIndex"

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SENSITIVITY_TYPE:Ljava/lang/String; = "SensitivityType"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STANDARD_OUTPUT_SENSITIVITY:Ljava/lang/String; = "StandardOutputSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field private static final TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field public static final WHITEBALANCE_AUTO:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITEBALANCE_MANUAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITE_BALANCE_AUTO:S = 0x0s

.field public static final WHITE_BALANCE_MANUAL:S = 0x1s

.field public static final Y_CB_CR_POSITIONING_CENTERED:S = 0x1s

.field public static final Y_CB_CR_POSITIONING_CO_SITED:S = 0x2s

.field private static final sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/support/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/media/ExifInterface$ExifAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mExifOffset:I

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mIsSupportedFile:Z

.field private mMimeType:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mRw2JpgFromRawOffset:I

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 31

    const/4 v0, 0x4

    .line 2144
    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x6

    .line 2145
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v5

    .line 2144
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/support/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    .line 2146
    new-array v1, v0, [Ljava/lang/Integer;

    .line 2147
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v4

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v7

    const/4 v9, 0x5

    .line 2148
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v5

    .line 2146
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/support/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    .line 2787
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 2792
    new-array v1, v2, [I

    aput v0, v1, v4

    sput-object v1, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 2797
    new-array v1, v2, [I

    aput v6, v1, v4

    sput-object v1, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 2828
    new-array v1, v5, [B

    fill-array-data v1, :array_1

    sput-object v1, Landroid/support/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 2840
    new-array v1, v3, [B

    fill-array-data v1, :array_2

    sput-object v1, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v1, 0xa

    .line 2842
    new-array v10, v1, [B

    fill-array-data v10, :array_3

    sput-object v10, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    const/16 v10, 0xd

    .line 2887
    new-array v11, v10, [Ljava/lang/String;

    const-string v12, ""

    aput-object v12, v11, v4

    const-string v12, "BYTE"

    aput-object v12, v11, v2

    const-string v12, "STRING"

    aput-object v12, v11, v7

    const-string v12, "USHORT"

    aput-object v12, v11, v5

    const-string v12, "ULONG"

    aput-object v12, v11, v0

    const-string v12, "URATIONAL"

    aput-object v12, v11, v9

    const-string v12, "SBYTE"

    aput-object v12, v11, v3

    const-string v12, "UNDEFINED"

    aput-object v12, v11, v8

    const-string v12, "SSHORT"

    aput-object v12, v11, v6

    const-string v12, "SLONG"

    const/16 v13, 0x9

    aput-object v12, v11, v13

    const-string v12, "SRATIONAL"

    aput-object v12, v11, v1

    const-string v12, "SINGLE"

    const/16 v14, 0xb

    aput-object v12, v11, v14

    const-string v12, "DOUBLE"

    const/16 v15, 0xc

    aput-object v12, v11, v15

    sput-object v11, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v11, 0xe

    .line 2892
    new-array v11, v11, [I

    fill-array-data v11, :array_4

    sput-object v11, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 2895
    new-array v11, v6, [B

    fill-array-data v11, :array_5

    sput-object v11, Landroid/support/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    const/16 v11, 0x29

    .line 3334
    new-array v11, v11, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v12, Landroid/support/media/ExifInterface$ExifTag;

    const-string v10, "NewSubfileType"

    const/4 v15, 0x0

    const/16 v14, 0xfe

    invoke-direct {v12, v10, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v12, v11, v4

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubfileType"

    const/16 v14, 0xff

    invoke-direct {v10, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v10, v11, v2

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v20, "ImageWidth"

    const/16 v21, 0x100

    const/16 v22, 0x3

    const/16 v23, 0x4

    const/16 v24, 0x0

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v24}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v10, v11, v7

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v26, "ImageLength"

    const/16 v27, 0x101

    const/16 v28, 0x3

    const/16 v29, 0x4

    const/16 v30, 0x0

    move-object/from16 v25, v10

    invoke-direct/range {v25 .. v30}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v10, v11, v5

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "BitsPerSample"

    const/16 v14, 0x102

    invoke-direct {v10, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v10, v11, v0

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Compression"

    const/16 v14, 0x103

    invoke-direct {v10, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v10, v11, v9

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PhotometricInterpretation"

    const/16 v14, 0x106

    invoke-direct {v10, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v10, v11, v3

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ImageDescription"

    const/16 v14, 0x10e

    invoke-direct {v10, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v10, v11, v8

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Make"

    const/16 v14, 0x10f

    invoke-direct {v10, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v10, v11, v6

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Model"

    const/16 v14, 0x110

    invoke-direct {v10, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v10, v11, v13

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v20, "StripOffsets"

    const/16 v21, 0x111

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v24}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v10, v11, v1

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Orientation"

    const/16 v14, 0x112

    invoke-direct {v10, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xb

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SamplesPerPixel"

    const/16 v14, 0x115

    invoke-direct {v10, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xc

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v20, "RowsPerStrip"

    const/16 v21, 0x116

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v24}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xd

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v20, "StripByteCounts"

    const/16 v21, 0x117

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v24}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xe

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "XResolution"

    const/16 v14, 0x11a

    invoke-direct {v10, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xf

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "YResolution"

    const/16 v14, 0x11b

    invoke-direct {v10, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x10

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PlanarConfiguration"

    const/16 v14, 0x11c

    invoke-direct {v10, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x11

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ResolutionUnit"

    const/16 v14, 0x128

    invoke-direct {v10, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x12

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "TransferFunction"

    const/16 v14, 0x12d

    invoke-direct {v10, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x13

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Software"

    const/16 v14, 0x131

    invoke-direct {v10, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x14

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DateTime"

    const/16 v14, 0x132

    invoke-direct {v10, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x15

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Artist"

    const/16 v14, 0x13b

    invoke-direct {v10, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x16

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "WhitePoint"

    const/16 v14, 0x13e

    invoke-direct {v10, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x17

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PrimaryChromaticities"

    const/16 v14, 0x13f

    invoke-direct {v10, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x18

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubIFDPointer"

    const/16 v14, 0x14a

    invoke-direct {v10, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x19

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "JPEGInterchangeFormat"

    const/16 v14, 0x201

    invoke-direct {v10, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1a

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "JPEGInterchangeFormatLength"

    const/16 v14, 0x202

    invoke-direct {v10, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1b

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrCoefficients"

    const/16 v14, 0x211

    invoke-direct {v10, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1c

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrSubSampling"

    const/16 v14, 0x212

    invoke-direct {v10, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1d

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrPositioning"

    const/16 v14, 0x213

    invoke-direct {v10, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1e

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ReferenceBlackWhite"

    const/16 v14, 0x214

    invoke-direct {v10, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1f

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Copyright"

    const v14, 0x8298

    invoke-direct {v10, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x20

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExifIFDPointer"

    const v14, 0x8769

    invoke-direct {v10, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x21

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSInfoIFDPointer"

    const v14, 0x8825

    invoke-direct {v10, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x22

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SensorTopBorder"

    invoke-direct {v10, v12, v0, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x23

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SensorLeftBorder"

    invoke-direct {v10, v12, v9, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x24

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SensorBottomBorder"

    invoke-direct {v10, v12, v3, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x25

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SensorRightBorder"

    invoke-direct {v10, v12, v8, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x26

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ISO"

    const/16 v14, 0x17

    invoke-direct {v10, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x27

    aput-object v10, v11, v12

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "JpgFromRaw"

    const/16 v14, 0x2e

    invoke-direct {v10, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x28

    aput-object v10, v11, v12

    sput-object v11, Landroid/support/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    const/16 v10, 0x3b

    .line 3383
    new-array v10, v10, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExposureTime"

    const v14, 0x829a

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v4

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FNumber"

    const v14, 0x829d

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v2

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExposureProgram"

    const v14, 0x8822

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v7

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SpectralSensitivity"

    const v14, 0x8824

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v5

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PhotographicSensitivity"

    const v14, 0x8827

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v0

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "OECF"

    const v14, 0x8828

    invoke-direct {v11, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v9

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExifVersion"

    const v14, 0x9000

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v3

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DateTimeOriginal"

    const v14, 0x9003

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v8

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DateTimeDigitized"

    const v14, 0x9004

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v6

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ComponentsConfiguration"

    const v14, 0x9101

    invoke-direct {v11, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v13

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "CompressedBitsPerPixel"

    const v14, 0x9102

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v1

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ShutterSpeedValue"

    const v14, 0x9201

    invoke-direct {v11, v12, v14, v1, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xb

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ApertureValue"

    const v14, 0x9202

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xc

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "BrightnessValue"

    const v14, 0x9203

    invoke-direct {v11, v12, v14, v1, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xd

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExposureBiasValue"

    const v14, 0x9204

    invoke-direct {v11, v12, v14, v1, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xe

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "MaxApertureValue"

    const v14, 0x9205

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xf

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubjectDistance"

    const v14, 0x9206

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x10

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "MeteringMode"

    const v14, 0x9207

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x11

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "LightSource"

    const v14, 0x9208

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x12

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Flash"

    const v14, 0x9209

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x13

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FocalLength"

    const v14, 0x920a

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x14

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubjectArea"

    const v14, 0x9214

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x15

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "MakerNote"

    const v14, 0x927c

    invoke-direct {v11, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x16

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "UserComment"

    const v14, 0x9286

    invoke-direct {v11, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x17

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubSecTime"

    const v14, 0x9290

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x18

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubSecTimeOriginal"

    const v14, 0x9291

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x19

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubSecTimeDigitized"

    const v14, 0x9292

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1a

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FlashpixVersion"

    const v14, 0xa000

    invoke-direct {v11, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1b

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ColorSpace"

    const v14, 0xa001

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1c

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v20, "PixelXDimension"

    const v21, 0xa002

    move-object/from16 v19, v11

    invoke-direct/range {v19 .. v24}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1d

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v20, "PixelYDimension"

    const v21, 0xa003

    move-object/from16 v19, v11

    invoke-direct/range {v19 .. v24}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1e

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "RelatedSoundFile"

    const v14, 0xa004

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1f

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "InteroperabilityIFDPointer"

    const v14, 0xa005

    invoke-direct {v11, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x20

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FlashEnergy"

    const v14, 0xa20b

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x21

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SpatialFrequencyResponse"

    const v14, 0xa20c

    invoke-direct {v11, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x22

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FocalPlaneXResolution"

    const v14, 0xa20e

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x23

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FocalPlaneYResolution"

    const v14, 0xa20f

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x24

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FocalPlaneResolutionUnit"

    const v14, 0xa210

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x25

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubjectLocation"

    const v14, 0xa214

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x26

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExposureIndex"

    const v14, 0xa215

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x27

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SensingMethod"

    const v14, 0xa217

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x28

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FileSource"

    const v14, 0xa300

    invoke-direct {v11, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x29

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SceneType"

    const v14, 0xa301

    invoke-direct {v11, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x2a

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "CFAPattern"

    const v14, 0xa302

    invoke-direct {v11, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x2b

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "CustomRendered"

    const v14, 0xa401

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x2c

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExposureMode"

    const v14, 0xa402

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x2d

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "WhiteBalance"

    const v14, 0xa403

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x2e

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DigitalZoomRatio"

    const v14, 0xa404

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x2f

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FocalLengthIn35mmFilm"

    const v14, 0xa405

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x30

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SceneCaptureType"

    const v14, 0xa406

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x31

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GainControl"

    const v14, 0xa407

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x32

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Contrast"

    const v14, 0xa408

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x33

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Saturation"

    const v14, 0xa409

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x34

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Sharpness"

    const v14, 0xa40a

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x35

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DeviceSettingDescription"

    const v14, 0xa40b

    invoke-direct {v11, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x36

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubjectDistanceRange"

    const v14, 0xa40c

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x37

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ImageUniqueID"

    const v14, 0xa420

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x38

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DNGVersion"

    const v14, 0xc612

    invoke-direct {v11, v12, v14, v2, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x39

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v20, "DefaultCropSize"

    const v21, 0xc620

    move-object/from16 v19, v11

    invoke-direct/range {v19 .. v24}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x3a

    aput-object v11, v10, v12

    sput-object v10, Landroid/support/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    const/16 v10, 0x1f

    .line 3446
    new-array v10, v10, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSVersionID"

    invoke-direct {v11, v12, v4, v2, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v4

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSLatitudeRef"

    invoke-direct {v11, v12, v2, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v2

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSLatitude"

    invoke-direct {v11, v12, v7, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v7

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSLongitudeRef"

    invoke-direct {v11, v12, v5, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v5

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSLongitude"

    invoke-direct {v11, v12, v0, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v0

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSAltitudeRef"

    invoke-direct {v11, v12, v9, v2, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v9

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSAltitude"

    invoke-direct {v11, v12, v3, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v3

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSTimeStamp"

    invoke-direct {v11, v12, v8, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v8

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSSatellites"

    invoke-direct {v11, v12, v6, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v6

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSStatus"

    invoke-direct {v11, v12, v13, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v13

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSMeasureMode"

    invoke-direct {v11, v12, v1, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v1

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDOP"

    const/16 v14, 0xb

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v14

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSSpeedRef"

    const/16 v14, 0xc

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v14

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSSpeed"

    const/16 v14, 0xd

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v14

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSTrackRef"

    const/16 v14, 0xe

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xe

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSTrack"

    const/16 v14, 0xf

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xf

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSImgDirectionRef"

    const/16 v14, 0x10

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x10

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSImgDirection"

    const/16 v14, 0x11

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x11

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSMapDatum"

    const/16 v14, 0x12

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x12

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestLatitudeRef"

    const/16 v14, 0x13

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x13

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestLatitude"

    const/16 v14, 0x14

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x14

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestLongitudeRef"

    const/16 v14, 0x15

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x15

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestLongitude"

    const/16 v14, 0x16

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x16

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestBearingRef"

    const/16 v14, 0x17

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x17

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestBearing"

    const/16 v14, 0x18

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x18

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestDistanceRef"

    const/16 v14, 0x19

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x19

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestDistance"

    const/16 v14, 0x1a

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1a

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSProcessingMethod"

    const/16 v14, 0x1b

    invoke-direct {v11, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1b

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSAreaInformation"

    const/16 v14, 0x1c

    invoke-direct {v11, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1c

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDateStamp"

    const/16 v14, 0x1d

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1d

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDifferential"

    const/16 v14, 0x1e

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1e

    aput-object v11, v10, v12

    sput-object v10, Landroid/support/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3480
    new-array v10, v2, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "InteroperabilityIndex"

    invoke-direct {v11, v12, v2, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v4

    sput-object v10, Landroid/support/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    const/16 v10, 0x25

    .line 3484
    new-array v10, v10, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "NewSubfileType"

    const/16 v14, 0xfe

    invoke-direct {v11, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v4

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubfileType"

    const/16 v14, 0xff

    invoke-direct {v11, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v2

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v20, "ThumbnailImageWidth"

    const/16 v21, 0x100

    move-object/from16 v19, v11

    invoke-direct/range {v19 .. v24}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v7

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v26, "ThumbnailImageLength"

    move-object/from16 v25, v11

    invoke-direct/range {v25 .. v30}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v5

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "BitsPerSample"

    const/16 v14, 0x102

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v0

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Compression"

    const/16 v14, 0x103

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v9

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PhotometricInterpretation"

    const/16 v14, 0x106

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v3

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ImageDescription"

    const/16 v14, 0x10e

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v8

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Make"

    const/16 v14, 0x10f

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v6

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Model"

    const/16 v14, 0x110

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v13

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v20, "StripOffsets"

    const/16 v21, 0x111

    move-object/from16 v19, v11

    invoke-direct/range {v19 .. v24}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v1

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Orientation"

    const/16 v14, 0x112

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xb

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SamplesPerPixel"

    const/16 v14, 0x115

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xc

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v18, "RowsPerStrip"

    const/16 v19, 0x116

    const/16 v20, 0x3

    const/16 v21, 0x4

    const/16 v22, 0x0

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v22}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xd

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v17, "StripByteCounts"

    const/16 v18, 0x117

    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v21}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xe

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "XResolution"

    const/16 v14, 0x11a

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0xf

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "YResolution"

    const/16 v14, 0x11b

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x10

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PlanarConfiguration"

    const/16 v14, 0x11c

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x11

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ResolutionUnit"

    const/16 v14, 0x128

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x12

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "TransferFunction"

    const/16 v14, 0x12d

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x13

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Software"

    const/16 v14, 0x131

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x14

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DateTime"

    const/16 v14, 0x132

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x15

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Artist"

    const/16 v14, 0x13b

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x16

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "WhitePoint"

    const/16 v14, 0x13e

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x17

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PrimaryChromaticities"

    const/16 v14, 0x13f

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x18

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubIFDPointer"

    const/16 v14, 0x14a

    invoke-direct {v11, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x19

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "JPEGInterchangeFormat"

    const/16 v14, 0x201

    invoke-direct {v11, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1a

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "JPEGInterchangeFormatLength"

    const/16 v14, 0x202

    invoke-direct {v11, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1b

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrCoefficients"

    const/16 v14, 0x211

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1c

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrSubSampling"

    const/16 v14, 0x212

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1d

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrPositioning"

    const/16 v14, 0x213

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1e

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ReferenceBlackWhite"

    const/16 v14, 0x214

    invoke-direct {v11, v12, v14, v9, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x1f

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Copyright"

    const v14, 0x8298

    invoke-direct {v11, v12, v14, v7, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x20

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExifIFDPointer"

    const v14, 0x8769

    invoke-direct {v11, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x21

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSInfoIFDPointer"

    const v14, 0x8825

    invoke-direct {v11, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x22

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DNGVersion"

    const v14, 0xc612

    invoke-direct {v11, v12, v14, v2, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x23

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v17, "DefaultCropSize"

    const v18, 0xc620

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v21}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/support/media/ExifInterface$1;)V

    const/16 v12, 0x24

    aput-object v11, v10, v12

    sput-object v10, Landroid/support/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3527
    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "StripOffsets"

    const/16 v12, 0x111

    invoke-direct {v10, v11, v12, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    sput-object v10, Landroid/support/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/support/media/ExifInterface$ExifTag;

    .line 3531
    new-array v10, v5, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ThumbnailImage"

    const/16 v14, 0x100

    invoke-direct {v11, v12, v14, v8, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v4

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "CameraSettingsIFDPointer"

    const/16 v14, 0x2020

    invoke-direct {v11, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v2

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ImageProcessingIFDPointer"

    const/16 v14, 0x2040

    invoke-direct {v11, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v7

    sput-object v10, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3536
    new-array v10, v7, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PreviewImageStart"

    const/16 v14, 0x101

    invoke-direct {v11, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v4

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PreviewImageLength"

    const/16 v14, 0x102

    invoke-direct {v11, v12, v14, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v2

    sput-object v10, Landroid/support/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3540
    new-array v10, v2, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "AspectFrame"

    const/16 v14, 0x1113

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v4

    sput-object v10, Landroid/support/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3544
    new-array v10, v2, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ColorSpace"

    const/16 v14, 0x37

    invoke-direct {v11, v12, v14, v5, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v11, v10, v4

    sput-object v10, Landroid/support/media/ExifInterface;->PEF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3571
    new-array v1, v1, [[Landroid/support/media/ExifInterface$ExifTag;

    sget-object v10, Landroid/support/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v10, v1, v4

    sget-object v10, Landroid/support/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v10, v1, v2

    sget-object v10, Landroid/support/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v10, v1, v7

    sget-object v10, Landroid/support/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v10, v1, v5

    sget-object v10, Landroid/support/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v10, v1, v0

    sget-object v10, Landroid/support/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v10, v1, v9

    sget-object v10, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v10, v1, v3

    sget-object v10, Landroid/support/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v10, v1, v8

    sget-object v10, Landroid/support/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v10, v1, v6

    sget-object v10, Landroid/support/media/ExifInterface;->PEF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v10, v1, v13

    sput-object v1, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    .line 3577
    new-array v1, v3, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v3, Landroid/support/media/ExifInterface$ExifTag;

    const-string v10, "SubIFDPointer"

    const/16 v11, 0x14a

    invoke-direct {v3, v10, v11, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v3, v1, v4

    new-instance v3, Landroid/support/media/ExifInterface$ExifTag;

    const-string v10, "ExifIFDPointer"

    const v11, 0x8769

    invoke-direct {v3, v10, v11, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v3, v1, v2

    new-instance v3, Landroid/support/media/ExifInterface$ExifTag;

    const-string v10, "GPSInfoIFDPointer"

    const v11, 0x8825

    invoke-direct {v3, v10, v11, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v3, v1, v7

    new-instance v3, Landroid/support/media/ExifInterface$ExifTag;

    const-string v10, "InteroperabilityIFDPointer"

    const v11, 0xa005

    invoke-direct {v3, v10, v11, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v3, v1, v5

    new-instance v3, Landroid/support/media/ExifInterface$ExifTag;

    const-string v10, "CameraSettingsIFDPointer"

    const/16 v11, 0x2020

    invoke-direct {v3, v10, v11, v2, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v3, v1, v0

    new-instance v3, Landroid/support/media/ExifInterface$ExifTag;

    const-string v10, "ImageProcessingIFDPointer"

    const/16 v11, 0x2040

    invoke-direct {v3, v10, v11, v2, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    aput-object v3, v1, v9

    sput-object v1, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 3587
    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v3, "JPEGInterchangeFormat"

    const/16 v10, 0x201

    invoke-direct {v1, v3, v10, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    sput-object v1, Landroid/support/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/support/media/ExifInterface$ExifTag;

    .line 3589
    new-instance v1, Landroid/support/media/ExifInterface$ExifTag;

    const-string v3, "JPEGInterchangeFormatLength"

    const/16 v10, 0x202

    invoke-direct {v1, v3, v10, v0, v15}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/support/media/ExifInterface$1;)V

    sput-object v1, Landroid/support/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/support/media/ExifInterface$ExifTag;

    .line 3594
    sget-object v1, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v1, v1

    new-array v1, v1, [Ljava/util/HashMap;

    sput-object v1, Landroid/support/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 3598
    sget-object v1, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v1, v1

    new-array v1, v1, [Ljava/util/HashMap;

    sput-object v1, Landroid/support/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3600
    new-instance v1, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/String;

    const-string v10, "FNumber"

    aput-object v10, v3, v4

    const-string v10, "DigitalZoomRatio"

    aput-object v10, v3, v2

    const-string v10, "ExposureTime"

    aput-object v10, v3, v7

    const-string v10, "SubjectDistance"

    aput-object v10, v3, v5

    const-string v10, "GPSTimeStamp"

    aput-object v10, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Landroid/support/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 3605
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    const-string v1, "US-ASCII"

    .line 3612
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Landroid/support/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    .line 3614
    sget-object v3, Landroid/support/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Landroid/support/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 3653
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/support/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 3654
    sget-object v1, Landroid/support/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v1, 0x0

    .line 3657
    :goto_0
    sget-object v3, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 3658
    sget-object v3, Landroid/support/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    aput-object v10, v3, v1

    .line 3659
    sget-object v3, Landroid/support/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    aput-object v10, v3, v1

    .line 3660
    sget-object v3, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v3, v3, v1

    array-length v10, v3

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v3, v11

    .line 3661
    sget-object v13, Landroid/support/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v13, v13, v1

    iget v14, v12, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3662
    sget-object v13, Landroid/support/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v13, v13, v1

    iget-object v14, v12, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3667
    :cond_1
    sget-object v1, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3668
    sget-object v1, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3669
    sget-object v1, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v2, v2, v7

    iget v2, v2, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3670
    sget-object v1, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3671
    sget-object v1, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v0, v2, v0

    iget v0, v0, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3672
    sget-object v0, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    .line 3695
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/support/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 3698
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/support/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_4
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_5
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3678
    sget-object v0, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3680
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3728
    iput-object v0, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 3729
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_0

    .line 3730
    move-object v0, p1

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    goto :goto_0

    .line 3732
    :cond_0
    iput-object v0, p0, Landroid/support/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 3734
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    return-void

    .line 3726
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inputStream cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3678
    sget-object v0, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3680
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3708
    iput-object v0, p0, Landroid/support/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 3709
    iput-object p1, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 3711
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3712
    :try_start_1
    invoke-direct {p0, v1}, Landroid/support/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3714
    invoke-static {v1}, Landroid/support/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Landroid/support/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    .line 3705
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Ljava/nio/charset/Charset;
    .locals 1

    .line 68
    sget-object v0, Landroid/support/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .line 68
    sget-object v0, Landroid/support/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    .line 5242
    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    .line 5243
    invoke-virtual {p0, v2}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5244
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v3, "DateTime"

    .line 5245
    invoke-static {v0}, Landroid/support/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5244
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    .line 5249
    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    .line 5250
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v4, "ImageWidth"

    iget-object v5, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5251
    invoke-static {v2, v3, v5}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 5250
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    .line 5253
    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5254
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v4, "ImageLength"

    iget-object v5, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5255
    invoke-static {v2, v3, v5}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 5254
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    .line 5257
    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 5258
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v1, "Orientation"

    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5259
    invoke-static {v2, v3, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 5258
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    .line 5261
    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 5262
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "LightSource"

    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5263
    invoke-static {v2, v3, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 5262
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 6439
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6441
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private convertDecimalDegree(D)Ljava/lang/String;
    .locals 8

    double-to-long v0, p1

    long-to-double v2, v0

    .line 4672
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v4, p1, v2

    double-to-long v4, v4

    long-to-double v6, v4

    .line 4673
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v2

    sub-double/2addr p1, v6

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double p1, p1, v2

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    .line 4674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/1,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/1,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/10000000"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 9

    :try_start_0
    const-string v0, ","

    .line 4640
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 4643
    aget-object v1, p0, v0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4644
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v1, v1, v4

    .line 4645
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    div-double/2addr v2, v5

    .line 4647
    aget-object v1, p0, v4

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4648
    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aget-object v1, v1, v4

    .line 4649
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v5, v7

    const/4 v1, 0x2

    .line 4651
    aget-object p0, p0, v1

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4652
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    aget-object p0, p0, v4

    .line 4653
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v0, v7

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    div-double/2addr v5, v7

    add-double/2addr v2, v5

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v4

    add-double/2addr v2, v0

    const-string p0, "S"

    .line 4656
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "W"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "N"

    .line 4658
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "E"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 4662
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-wide v2

    :cond_3
    :goto_1
    neg-double p0, v2

    return-wide p0

    .line 4666
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static convertToLongArray(Ljava/lang/Object;)[J
    .locals 4

    .line 6467
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 6468
    check-cast p0, [I

    .line 6469
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 6470
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 6471
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6474
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 6475
    check-cast p0, [J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 6453
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6455
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    .line 6457
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return v2
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "ISOSpeedRatings"

    .line 3745
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PhotographicSensitivity"

    :cond_0
    const/4 v0, 0x0

    .line 3754
    :goto_0
    sget-object v1, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3755
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4783
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    int-to-long v0, p2

    .line 4786
    invoke-virtual {p1, v0, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4790
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    const/4 v2, 0x1

    add-int/2addr p2, v2

    .line 4794
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v3

    const/16 v4, -0x28

    if-ne v3, v4, :cond_10

    add-int/2addr p2, v2

    .line 4799
    :goto_0
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_f

    add-int/2addr p2, v2

    .line 4804
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v0

    add-int/2addr p2, v2

    const/16 v3, -0x27

    if-eq v0, v3, :cond_e

    const/16 v3, -0x26

    if-ne v0, v3, :cond_0

    goto/16 :goto_3

    .line 4815
    :cond_0
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 p2, p2, 0x2

    if-ltz v3, :cond_d

    const/16 v4, -0x1f

    const/4 v5, 0x0

    if-eq v0, v4, :cond_5

    const/4 v4, -0x2

    if-eq v0, v4, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_2

    .line 4889
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4892
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    const-string v4, "ImageLength"

    .line 4893
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4892
    invoke-static {v5, v6, v7}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4894
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    const-string v4, "ImageWidth"

    .line 4895
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4894
    invoke-static {v5, v6, v7}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x5

    goto :goto_2

    .line 4890
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid SOFx"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4864
    :cond_2
    new-array v0, v3, [B

    .line 4865
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v3, :cond_4

    const-string v3, "UserComment"

    .line 4869
    invoke-virtual {p0, v3}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 4870
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    const-string v4, "UserComment"

    new-instance v6, Ljava/lang/String;

    sget-object v7, Landroid/support/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v6}, Landroid/support/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    .line 4866
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v0, 0x6

    if-ge v3, v0, :cond_6

    goto :goto_2

    .line 4833
    :cond_6
    new-array v4, v0, [B

    .line 4834
    invoke-virtual {p1, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v6

    if-ne v6, v0, :cond_c

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v3, v3, -0x6

    .line 4839
    sget-object v0, Landroid/support/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    if-lez v3, :cond_b

    .line 4850
    iput p2, p0, Landroid/support/media/ExifInterface;->mExifOffset:I

    .line 4852
    new-array v0, v3, [B

    .line 4853
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v3, :cond_a

    add-int/2addr p2, v3

    .line 4859
    invoke-direct {p0, v0, p3}, Landroid/support/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_1

    :goto_2
    if-ltz v3, :cond_9

    .line 4907
    invoke-virtual {p1, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v0

    if-ne v0, v3, :cond_8

    add-int/2addr p2, v3

    goto/16 :goto_0

    .line 4908
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid JPEG segment"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4905
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid length"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4854
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4844
    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4835
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4822
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid length"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4913
    :cond_e
    :goto_3
    iget-object p2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void

    .line 4801
    :cond_f
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid marker:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4795
    :cond_10
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid marker: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4791
    :cond_11
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid marker: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    .line 4679
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 4680
    new-array v1, v0, [B

    .line 4681
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 4684
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 4685
    invoke-static {v1}, Landroid/support/media/ExifInterface;->isJpegFormat([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    .line 4687
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/media/ExifInterface;->isRafFormat([B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    return p1

    .line 4689
    :cond_1
    invoke-direct {p0, v1}, Landroid/support/media/ExifInterface;->isOrfFormat([B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    return p1

    .line 4691
    :cond_2
    invoke-direct {p0, v1}, Landroid/support/media/ExifInterface;->isRw2Format([B)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0xa

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 4682
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private getOrfAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5028
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getRawAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 5033
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 5034
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    .line 5037
    new-instance v1, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object p1, p1, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5039
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5043
    sget-object p1, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length p1, p1

    new-array p1, p1, [B

    .line 5044
    invoke-virtual {v1, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v2, 0x0

    .line 5045
    invoke-virtual {v1, v2, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5046
    sget-object v2, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v2, v2

    new-array v2, v2, [B

    .line 5047
    invoke-virtual {v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5049
    sget-object v3, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x8

    .line 5050
    invoke-virtual {v1, v2, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    .line 5051
    :cond_0
    sget-object p1, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc

    .line 5052
    invoke-virtual {v1, v2, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 5056
    invoke-direct {p0, v1, p1}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5059
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    .line 5060
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5061
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    .line 5062
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 5065
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5067
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5074
    :cond_2
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    .line 5075
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    .line 5077
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {p1, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5

    .line 5078
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 5083
    aget v2, p1, v1

    const/4 v3, 0x0

    aget v4, p1, v3

    if-le v2, v4, :cond_6

    const/4 v2, 0x3

    aget v4, p1, v2

    aget v5, p1, v0

    if-le v4, v5, :cond_6

    .line 5085
    aget v1, p1, v1

    aget v4, p1, v3

    sub-int/2addr v1, v4

    add-int/2addr v1, v0

    .line 5086
    aget v2, p1, v2

    aget p1, p1, v0

    sub-int/2addr v2, p1

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    add-int/2addr v1, v2

    sub-int v2, v1, v2

    sub-int/2addr v1, v2

    .line 5093
    :cond_4
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5094
    invoke-static {v1, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 5095
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5096
    invoke-static {v2, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5098
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5099
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v1, "ImageLength"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_1
    const-string v0, "ExifInterface"

    .line 5079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid aspect frame values. frame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5080
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5079
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method private getRafAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x54

    .line 4969
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v0, 0x4

    .line 4970
    new-array v1, v0, [B

    .line 4971
    new-array v2, v0, [B

    .line 4972
    invoke-virtual {p1, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 4974
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 4975
    invoke-virtual {p1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 4976
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 4977
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x5

    .line 4980
    invoke-direct {p0, p1, v0, v2}, Landroid/support/media/ExifInterface;->getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V

    int-to-long v0, v1

    .line 4983
    invoke-virtual {p1, v0, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4986
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4987
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4995
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    .line 4996
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    .line 4997
    sget-object v5, Landroid/support/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/support/media/ExifInterface$ExifTag;

    iget v5, v5, Landroid/support/media/ExifInterface$ExifTag;->number:I

    if-ne v3, v5, :cond_0

    .line 4998
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 4999
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    .line 5000
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5001
    invoke-static {v0, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5002
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5003
    invoke-static {p1, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 5004
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5005
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v1, "ImageWidth"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5011
    :cond_0
    invoke-virtual {p1, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getRawAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4918
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->parseTiffHeaders(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x0

    .line 4921
    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4924
    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->updateImageSizeValues(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x5

    .line 4925
    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->updateImageSizeValues(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x4

    .line 4926
    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->updateImageSizeValues(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4929
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->validateImages(Ljava/io/InputStream;)V

    .line 4931
    iget p1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 4934
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 4935
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 4938
    new-instance v1, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object p1, p1, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4940
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const-wide/16 v2, 0x6

    .line 4943
    invoke-virtual {v1, v2, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    const/16 p1, 0x9

    .line 4946
    invoke-direct {p0, v1, p1}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4949
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, v1, p1

    const-string v1, "ColorSpace"

    .line 4950
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 4952
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v1, v0

    const-string v1, "ColorSpace"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getRw2Attributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5110
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getRawAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 5113
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "JpgFromRaw"

    .line 5114
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    .line 5116
    iget v0, p0, Landroid/support/media/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v2}, Landroid/support/media/ExifInterface;->getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 5120
    :cond_0
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    const-string v0, "ISO"

    .line 5121
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5122
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "PhotographicSensitivity"

    .line 5123
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 5126
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v1, "PhotographicSensitivity"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    .line 6015
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eqz v0, :cond_9

    const-string v0, ","

    .line 6016
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 6017
    aget-object v0, p0, v1

    invoke-static {v0}, Landroid/support/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 6018
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    return-object v0

    .line 6021
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_8

    .line 6022
    aget-object v1, p0, v2

    invoke-static {v1}, Landroid/support/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 6024
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6025
    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    goto :goto_2

    .line 6026
    :cond_2
    :goto_1
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 6028
    :goto_2
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_4

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 6029
    invoke-virtual {v1, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6030
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, -0x1

    :goto_3
    if-ne v5, v4, :cond_5

    if-ne v1, v4, :cond_5

    .line 6033
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_5
    if-ne v5, v4, :cond_6

    .line 6036
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    if-ne v1, v4, :cond_7

    .line 6040
    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0

    :cond_9
    const-string v0, "/"

    .line 6047
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_f

    const-string v0, "/"

    .line 6048
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 6049
    array-length v0, p0

    if-ne v0, v3, :cond_e

    .line 6051
    :try_start_0
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    .line 6052
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    const/16 p0, 0xa

    cmp-long v2, v0, v5

    if-ltz v2, :cond_d

    cmp-long v2, v7, v5

    if-gez v2, :cond_a

    goto :goto_6

    :cond_a
    const/4 v2, 0x5

    const-wide/32 v5, 0x7fffffff

    cmp-long v9, v0, v5

    if-gtz v9, :cond_c

    cmp-long v0, v7, v5

    if-lez v0, :cond_b

    goto :goto_5

    .line 6059
    :cond_b
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 6057
    :cond_c
    :goto_5
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 6054
    :cond_d
    :goto_6
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6064
    :catch_0
    :cond_e
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 6067
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6068
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v7, 0x4

    cmp-long v8, v1, v5

    if-ltz v8, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v8, 0xffff

    cmp-long v10, v1, v8

    if-gtz v10, :cond_10

    .line 6069
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 6071
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-gez v2, :cond_11

    .line 6072
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 6074
    :cond_11
    new-instance v0, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 6079
    :catch_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 6080
    new-instance p0, Landroid/util/Pair;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 6084
    :catch_2
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private handleThumbnailFromJfif(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    .line 5572
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    const-string v1, "JPEGInterchangeFormatLength"

    .line 5574
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 5577
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 5578
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 5581
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 5582
    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 5585
    :cond_0
    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 5587
    iget v1, p0, Landroid/support/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 5584
    :cond_1
    :goto_0
    iget v1, p0, Landroid/support/media/ExifInterface;->mExifOffset:I

    add-int/2addr v0, v1

    :cond_2
    :goto_1
    if-lez v0, :cond_3

    if-lez p2, :cond_3

    const/4 v1, 0x1

    .line 5594
    iput-boolean v1, p0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    .line 5595
    iput v0, p0, Landroid/support/media/ExifInterface;->mThumbnailOffset:I

    .line 5596
    iput p2, p0, Landroid/support/media/ExifInterface;->mThumbnailLength:I

    .line 5597
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v1, :cond_3

    .line 5599
    new-array p2, p2, [B

    int-to-long v0, v0

    .line 5600
    invoke-virtual {p1, v0, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5601
    invoke-virtual {p1, p2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5602
    iput-object p2, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    :cond_3
    return-void
.end method

.method private handleThumbnailFromStrips(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "StripOffsets"

    .line 5612
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    const-string v1, "StripByteCounts"

    .line 5614
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 5617
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5618
    invoke-static {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v0

    .line 5619
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5620
    invoke-static {p2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroid/support/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object p2

    if-nez v0, :cond_0

    const-string p1, "ExifInterface"

    const-string p2, "stripOffsets should not be null."

    .line 5623
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "ExifInterface"

    const-string p2, "stripByteCounts should not be null."

    .line 5627
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-wide/16 v1, 0x0

    .line 5632
    array-length v3, p2

    const/4 v4, 0x0

    move-wide v5, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-wide v7, p2, v1

    add-long/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    long-to-int v1, v5

    .line 5637
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 5641
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_4

    .line 5642
    aget-wide v6, v0, v2

    long-to-int v6, v6

    .line 5643
    aget-wide v7, p2, v2

    long-to-int v7, v7

    sub-int/2addr v6, v3

    if-gez v6, :cond_3

    const-string v8, "ExifInterface"

    const-string v9, "Invalid strip offset value"

    .line 5648
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    int-to-long v8, v6

    .line 5650
    invoke-virtual {p1, v8, v9}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    add-int/2addr v3, v6

    .line 5654
    new-array v6, v7, [B

    .line 5655
    invoke-virtual {p1, v6}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    add-int/2addr v3, v7

    .line 5659
    array-length v7, v6

    invoke-static {v6, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5661
    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 5664
    iput-boolean p1, p0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    .line 5665
    iput-object v1, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    .line 5666
    array-length p1, v1

    iput p1, p0, Landroid/support/media/ExifInterface;->mThumbnailLength:I

    :cond_5
    return-void
.end method

.method private static isJpegFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4703
    :goto_0
    sget-object v2, Landroid/support/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 4704
    aget-byte v2, p0, v1

    sget-object v3, Landroid/support/media/ExifInterface;->JPEG_SIGNATURE:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isOrfFormat([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4736
    new-instance v0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4739
    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface;->readByteOrder(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4741
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4743
    invoke-virtual {v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    .line 4744
    invoke-virtual {v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/16 v0, 0x4f52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5352

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isRafFormat([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FUJIFILMCCD-RAW"

    .line 4718
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4719
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 4720
    aget-byte v3, p1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isRw2Format([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4753
    new-instance v0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4756
    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface;->readByteOrder(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4758
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4760
    invoke-virtual {v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    .line 4761
    invoke-virtual {v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/16 v0, 0x55

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BitsPerSample"

    .line 5673
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    .line 5675
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 5677
    sget-object v1, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 5682
    :cond_0
    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    const-string v1, "PhotometricInterpretation"

    .line 5684
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_3

    .line 5686
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5687
    invoke-virtual {p1, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 5688
    sget-object v1, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 5689
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    sget-object p1, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 5691
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    .line 5708
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    const-string v1, "ImageWidth"

    .line 5709
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5712
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 5713
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 4
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4193
    :goto_0
    :try_start_0
    sget-object v2, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4194
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4198
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4199
    move-object p1, v1

    check-cast p1, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    .line 4202
    new-instance p1, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4204
    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 4218
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getRw2Attributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4210
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getRafAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4214
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getOrfAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4206
    :pswitch_3
    invoke-direct {p0, p1, v0, v0}, Landroid/support/media/ExifInterface;->getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V

    goto :goto_1

    .line 4229
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getRawAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 4237
    :goto_1
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->setThumbnailData(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    const/4 p1, 0x1

    .line 4238
    iput-boolean p1, p0, Landroid/support/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 4242
    :catch_0
    :try_start_1
    iput-boolean v0, p0, Landroid/support/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4249
    :goto_2
    invoke-direct {p0}, Landroid/support/media/ExifInterface;->addDefaultValuesForCompatibility()V

    return-void

    :goto_3
    invoke-direct {p0}, Landroid/support/media/ExifInterface;->addDefaultValuesForCompatibility()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private parseTiffHeaders(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5290
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->readByteOrder(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5292
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5295
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 5296
    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5297
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid start code: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5301
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    if-ge v0, p2, :cond_4

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_3

    .line 5307
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 5308
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t jump to first Ifd: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 5303
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid first Ifd offset: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private printAttributes()V
    .locals 7

    const/4 v0, 0x0

    .line 4259
    :goto_0
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const-string v1, "ExifInterface"

    .line 4260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The size of tag group["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4261
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4262
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/media/ExifInterface$ExifAttribute;

    const-string v4, "ExifInterface"

    .line 4263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tagType: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/support/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tagValue: \'"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4264
    invoke-virtual {v3, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4263
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private readByteOrder(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5270
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    const/16 v0, 0x4949

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4d4d

    if-ne p1, v0, :cond_0

    .line 5281
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    .line 5283
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5276
    :cond_1
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1
.end method

.method private readExifSegment([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5230
    new-instance v0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5234
    array-length p1, p1

    invoke-direct {p0, v0, p1}, Landroid/support/media/ExifInterface;->parseTiffHeaders(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5237
    invoke-direct {p0, v0, p2}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    return-void
.end method

.method private readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 5316
    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$700(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    if-le v3, v4, :cond_0

    return-void

    .line 5321
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    .line 5325
    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$700(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    mul-int/lit8 v5, v3, 0xc

    add-int/2addr v4, v5

    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    if-le v4, v5, :cond_1

    return-void

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x4

    if-ge v5, v3, :cond_18

    .line 5332
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    .line 5333
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 5334
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v10

    .line 5336
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v11

    add-int/2addr v11, v7

    int-to-long v11, v11

    .line 5339
    sget-object v13, Landroid/support/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v13, v13, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/media/ExifInterface$ExifTag;

    const/4 v14, 0x7

    const-wide/16 v15, 0x0

    if-nez v13, :cond_2

    const-string v4, "ExifInterface"

    .line 5350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move/from16 v17, v3

    goto/16 :goto_4

    :cond_2
    if-lez v9, :cond_8

    .line 5351
    sget-object v4, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v4, v4

    if-lt v9, v4, :cond_3

    goto :goto_3

    .line 5353
    :cond_3
    invoke-static {v13, v9}, Landroid/support/media/ExifInterface$ExifTag;->access$900(Landroid/support/media/ExifInterface$ExifTag;I)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ExifInterface"

    .line 5354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip the tag entry since data format ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") is unexpected for tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v13, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-ne v9, v14, :cond_5

    .line 5358
    iget v9, v13, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    :cond_5
    int-to-long v6, v10

    .line 5360
    sget-object v4, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v4, v4, v9

    move/from16 v17, v3

    int-to-long v3, v4

    mul-long v3, v3, v6

    cmp-long v6, v3, v15

    if-ltz v6, :cond_7

    const-wide/32 v6, 0x7fffffff

    cmp-long v18, v3, v6

    if-lez v18, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x1

    goto :goto_6

    :cond_7
    :goto_2
    const-string v6, "ExifInterface"

    .line 5362
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    :goto_3
    move/from16 v17, v3

    const-string v3, "ExifInterface"

    .line 5352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-wide/16 v3, 0x0

    :goto_5
    const/4 v6, 0x0

    :goto_6
    if-nez v6, :cond_9

    .line 5369
    invoke-virtual {v1, v11, v12}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    move v4, v2

    move/from16 v19, v5

    goto/16 :goto_d

    :cond_9
    const-wide/16 v6, 0x4

    cmp-long v15, v3, v6

    if-lez v15, :cond_f

    .line 5376
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 5380
    iget v7, v0, Landroid/support/media/ExifInterface;->mMimeType:I

    if-ne v7, v14, :cond_c

    const-string v7, "MakerNote"

    .line 5381
    iget-object v14, v13, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 5383
    iput v6, v0, Landroid/support/media/ExifInterface;->mOrfMakerNoteOffset:I

    :cond_a
    move/from16 v19, v5

    goto :goto_7

    :cond_b
    const/4 v7, 0x6

    if-ne v2, v7, :cond_a

    const-string v14, "ThumbnailImage"

    .line 5384
    iget-object v15, v13, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 5385
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 5387
    iput v6, v0, Landroid/support/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 5388
    iput v10, v0, Landroid/support/media/ExifInterface;->mOrfThumbnailLength:I

    .line 5390
    iget-object v14, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5391
    invoke-static {v7, v14}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 5392
    iget v14, v0, Landroid/support/media/ExifInterface;->mOrfThumbnailOffset:I

    int-to-long v14, v14

    move/from16 v19, v5

    iget-object v5, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5393
    invoke-static {v14, v15, v5}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 5394
    iget v14, v0, Landroid/support/media/ExifInterface;->mOrfThumbnailLength:I

    int-to-long v14, v14

    iget-object v2, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5395
    invoke-static {v14, v15, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 5397
    iget-object v14, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    const-string v15, "Compression"

    invoke-virtual {v14, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5398
    iget-object v7, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v14, 0x4

    aget-object v7, v7, v14

    const-string v15, "JPEGInterchangeFormat"

    invoke-virtual {v7, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5400
    iget-object v5, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v14

    const-string v7, "JPEGInterchangeFormatLength"

    invoke-virtual {v5, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_c
    move/from16 v19, v5

    .line 5403
    iget v2, v0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v5, 0xa

    if-ne v2, v5, :cond_d

    const-string v2, "JpgFromRaw"

    .line 5404
    iget-object v5, v13, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5405
    iput v6, v0, Landroid/support/media/ExifInterface;->mRw2JpgFromRawOffset:I

    :cond_d
    :goto_7
    int-to-long v14, v6

    add-long v20, v14, v3

    .line 5408
    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v2

    move-wide/from16 v22, v3

    int-to-long v2, v2

    cmp-long v4, v20, v2

    if-gtz v4, :cond_e

    .line 5409
    invoke-virtual {v1, v14, v15}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_9

    :cond_e
    const-string v2, "ExifInterface"

    .line 5412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5413
    invoke-virtual {v1, v11, v12}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :goto_8
    move/from16 v4, p2

    goto/16 :goto_d

    :cond_f
    move-wide/from16 v22, v3

    move/from16 v19, v5

    .line 5419
    :goto_9
    sget-object v2, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_11

    const-wide/16 v3, -0x1

    sparse-switch v9, :sswitch_data_0

    :goto_a
    const-wide/16 v5, 0x0

    goto :goto_b

    .line 5442
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    int-to-long v3, v3

    goto :goto_a

    .line 5433
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    int-to-long v3, v3

    goto :goto_a

    .line 5437
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    goto :goto_a

    .line 5429
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    int-to-long v3, v3

    goto :goto_a

    :goto_b
    cmp-long v7, v3, v5

    if-lez v7, :cond_10

    .line 5453
    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_10

    .line 5454
    invoke-virtual {v1, v3, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5455
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_c

    :cond_10
    const-string v2, "ExifInterface"

    .line 5457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    :goto_c
    invoke-virtual {v1, v11, v12}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_8

    :cond_11
    move-wide/from16 v3, v22

    long-to-int v2, v3

    .line 5464
    new-array v2, v2, [B

    .line 5465
    invoke-virtual {v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5466
    new-instance v3, Landroid/support/media/ExifInterface$ExifAttribute;

    const/4 v4, 0x0

    invoke-direct {v3, v9, v10, v2, v4}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[BLandroid/support/media/ExifInterface$1;)V

    .line 5467
    iget-object v2, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move/from16 v4, p2

    aget-object v2, v2, v4

    iget-object v5, v13, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DNGVersion"

    .line 5472
    iget-object v5, v13, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x3

    .line 5473
    iput v2, v0, Landroid/support/media/ExifInterface;->mMimeType:I

    :cond_12
    const-string v2, "Make"

    .line 5479
    iget-object v5, v13, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "Model"

    iget-object v5, v13, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    iget-object v2, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5480
    invoke-virtual {v3, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "PENTAX"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    const-string v2, "Compression"

    iget-object v5, v13, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 5481
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5482
    invoke-virtual {v3, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_16

    :cond_15
    const/16 v2, 0x8

    .line 5483
    iput v2, v0, Landroid/support/media/ExifInterface;->mMimeType:I

    .line 5487
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    int-to-long v2, v2

    cmp-long v5, v2, v11

    if-eqz v5, :cond_17

    .line 5488
    invoke-virtual {v1, v11, v12}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_17
    :goto_d
    add-int/lit8 v5, v19, 0x1

    int-to-short v5, v5

    move v2, v4

    move/from16 v3, v17

    goto/16 :goto_0

    .line 5492
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    if-gt v2, v4, :cond_1a

    .line 5493
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    const/16 v4, 0x8

    if-le v2, v4, :cond_1a

    .line 5499
    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    if-ge v2, v4, :cond_1a

    int-to-long v4, v2

    .line 5500
    invoke-virtual {v1, v4, v5}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5501
    iget-object v2, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5503
    invoke-direct {v0, v1, v3}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_e

    .line 5504
    :cond_19
    iget-object v2, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 5505
    invoke-direct {v0, v1, v3}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    :cond_1a
    :goto_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 4180
    :goto_0
    sget-object v1, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4181
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private retrieveJpegImageSize(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5520
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    .line 5521
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5522
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    .line 5523
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 5527
    :cond_0
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 5528
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_1

    .line 5530
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5531
    invoke-virtual {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 5534
    invoke-direct {p0, p1, v0, p2}, Landroid/support/media/ExifInterface;->getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_1
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5138
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5139
    new-instance p1, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p1, p2, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 5141
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_a

    .line 5144
    invoke-virtual {p1, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5145
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p2

    const/16 v2, -0x28

    if-ne p2, v2, :cond_9

    .line 5148
    invoke-virtual {p1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5151
    invoke-virtual {p1, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 p2, -0x1f

    .line 5152
    invoke-virtual {p1, p2}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/4 v2, 0x6

    .line 5153
    invoke-direct {p0, p1, v2}, Landroid/support/media/ExifInterface;->writeExifSegment(Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;I)I

    const/16 v3, 0x1000

    .line 5155
    new-array v3, v3, [B

    .line 5158
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    if-ne v4, v1, :cond_8

    .line 5162
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    const/4 v5, 0x0

    if-eq v4, p2, :cond_2

    packed-switch v4, :pswitch_data_0

    .line 5208
    invoke-virtual {p1, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5209
    invoke-virtual {p1, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5210
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 5211
    invoke-virtual {p1, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_1

    :goto_1
    if-lez v4, :cond_0

    .line 5217
    array-length v6, v3

    .line 5218
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 5217
    invoke-virtual {v0, v3, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_0

    .line 5219
    invoke-virtual {p1, v3, v5, v6}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v4, v6

    goto :goto_1

    .line 5214
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid length"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5200
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5201
    invoke-virtual {p1, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5203
    invoke-static {v0, p1}, Landroid/support/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    .line 5165
    :cond_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_7

    .line 5169
    new-array v7, v2, [B

    if-lt v6, v2, :cond_5

    .line 5171
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->read([B)I

    move-result v8

    if-ne v8, v2, :cond_4

    .line 5174
    sget-object v8, Landroid/support/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v6, v6, -0x6

    .line 5176
    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v4

    if-ne v4, v6, :cond_3

    goto :goto_0

    .line 5177
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid length"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5172
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5183
    :cond_5
    invoke-virtual {p1, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5184
    invoke-virtual {p1, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v4, v6, 0x2

    .line 5185
    invoke-virtual {p1, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    if-lt v6, v2, :cond_6

    add-int/lit8 v6, v6, -0x6

    .line 5188
    invoke-virtual {p1, v7}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_6
    :goto_2
    if-lez v6, :cond_0

    .line 5191
    array-length v4, v3

    .line 5192
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5191
    invoke-virtual {v0, v3, v5, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_0

    .line 5193
    invoke-virtual {p1, v3, v5, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v6, v4

    goto :goto_2

    .line 5167
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid length"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5160
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid marker"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5146
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid marker"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5142
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid marker"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x27
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setThumbnailData(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5541
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "Compression"

    .line 5544
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_1

    .line 5546
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    .line 5547
    iget v1, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5549
    :pswitch_0
    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->handleThumbnailFromJfif(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 5554
    :cond_0
    :pswitch_1
    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5555
    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->handleThumbnailFromStrips(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    .line 5562
    iput v1, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    .line 5563
    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->handleThumbnailFromJfif(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private swapBasedOnImageSize(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6394
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6401
    :cond_0
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v1, "ImageLength"

    .line 6402
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 6403
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p1

    const-string v2, "ImageWidth"

    .line 6404
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 6405
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "ImageLength"

    .line 6406
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 6407
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "ImageWidth"

    .line 6408
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 6419
    :cond_2
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 6420
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 6421
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 6422
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v2, :cond_3

    if-ge v1, v3, :cond_3

    .line 6426
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 6427
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    aput-object v2, v1, p1

    .line 6428
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aput-object v0, p1, p2

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private updateAttribute(Ljava/lang/String;Landroid/support/media/ExifInterface$ExifAttribute;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4165
    :goto_0
    sget-object v2, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 4166
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4167
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private updateImageSizeValues(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5768
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 5769
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5771
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 5772
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5773
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 5774
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5775
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 5776
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5777
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 5778
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_5

    .line 5783
    iget p1, v0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p1, v1, :cond_2

    .line 5784
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5785
    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/support/media/ExifInterface$Rational;

    if-eqz p1, :cond_1

    .line 5786
    array-length v0, p1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 5791
    :cond_0
    aget-object v0, p1, v3

    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5792
    invoke-static {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->createURational(Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5793
    aget-object p1, p1, v2

    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5794
    invoke-static {p1, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->createURational(Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "ExifInterface"

    .line 5787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid crop size values. cropSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5788
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5787
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5796
    :cond_2
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5797
    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    .line 5798
    array-length v0, p1

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 5803
    :cond_3
    aget v0, p1, v3

    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5804
    invoke-static {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5805
    aget p1, p1, v2

    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5806
    invoke-static {p1, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 5808
    :goto_1
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5809
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    const-string v0, "ImageLength"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    :goto_2
    const-string p2, "ExifInterface"

    .line 5799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid crop size values. cropSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5800
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5799
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 5813
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 5814
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 5815
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 5816
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_7

    if-le v1, v2, :cond_7

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 5820
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5821
    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 5822
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5823
    invoke-static {v1, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5824
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageLength"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5825
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    const-string p2, "ImageWidth"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 5828
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/support/media/ExifInterface;->retrieveJpegImageSize(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    :cond_7
    :goto_3
    return-void
.end method

.method private validateImages(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x5

    .line 5724
    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->swapBasedOnImageSize(II)V

    const/4 v1, 0x4

    .line 5725
    invoke-direct {p0, p1, v1}, Landroid/support/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 5726
    invoke-direct {p0, v0, v1}, Landroid/support/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 5731
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v4, "PixelXDimension"

    .line 5732
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5733
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "PixelYDimension"

    .line 5734
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 5736
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p1

    const-string v5, "ImageWidth"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5737
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, v2, p1

    const-string v2, "ImageLength"

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5742
    :cond_0
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5743
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5744
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    aput-object v2, p1, v1

    .line 5745
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, p1, v0

    .line 5750
    :cond_1
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ExifInterface"

    const-string v0, "No image meets the size requirements of a thumbnail image."

    .line 5751
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private writeExifSegment(Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;I)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5836
    sget-object v2, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [I

    .line 5837
    sget-object v3, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v3, v3

    new-array v3, v3, [I

    .line 5840
    sget-object v4, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v4, v7

    .line 5841
    iget-object v8, v8, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v8}, Landroid/support/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5844
    :cond_0
    sget-object v4, Landroid/support/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/support/media/ExifInterface$ExifTag;

    iget-object v4, v4, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/support/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 5845
    sget-object v4, Landroid/support/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/support/media/ExifInterface$ExifTag;

    iget-object v4, v4, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/support/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5848
    :goto_1
    sget-object v5, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 5849
    iget-object v5, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v5, v8

    .line 5850
    check-cast v9, Ljava/util/Map$Entry;

    .line 5851
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1

    .line 5852
    iget-object v10, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5859
    :cond_3
    iget-object v4, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v7, 0x0

    if-nez v4, :cond_4

    .line 5860
    iget-object v4, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v9, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v9, v9, v5

    iget-object v9, v9, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v10, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5861
    invoke-static {v7, v8, v10}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 5860
    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5863
    :cond_4
    iget-object v4, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x2

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 5864
    iget-object v4, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v10, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v10, v10, v9

    iget-object v10, v10, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v11, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5865
    invoke-static {v7, v8, v11}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 5864
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5867
    :cond_5
    iget-object v4, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v10, 0x3

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 5868
    iget-object v4, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v5

    sget-object v11, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v11, v11, v10

    iget-object v11, v11, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v12, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5869
    invoke-static {v7, v8, v12}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v12

    .line 5868
    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5871
    :cond_6
    iget-boolean v4, v0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    const/4 v11, 0x4

    if-eqz v4, :cond_7

    .line 5872
    iget-object v4, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    sget-object v12, Landroid/support/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/support/media/ExifInterface$ExifTag;

    iget-object v12, v12, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5873
    invoke-static {v7, v8, v13}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 5872
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5874
    iget-object v4, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    sget-object v12, Landroid/support/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/support/media/ExifInterface$ExifTag;

    iget-object v12, v12, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget v13, v0, Landroid/support/media/ExifInterface;->mThumbnailLength:I

    int-to-long v13, v13

    iget-object v15, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5875
    invoke-static {v13, v14, v15}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 5874
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v4, 0x0

    .line 5880
    :goto_3
    sget-object v12, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v12, v12

    if-ge v4, v12, :cond_a

    .line 5882
    iget-object v12, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v4

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :cond_8
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 5883
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5884
    invoke-virtual {v14}, Landroid/support/media/ExifInterface$ExifAttribute;->size()I

    move-result v14

    if-le v14, v11, :cond_8

    add-int/2addr v13, v14

    goto :goto_4

    .line 5889
    :cond_9
    aget v12, v3, v4

    add-int/2addr v12, v13

    aput v12, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    const/16 v4, 0x8

    const/4 v12, 0x0

    const/16 v13, 0x8

    .line 5894
    :goto_5
    sget-object v14, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v14, v14

    if-ge v12, v14, :cond_c

    .line 5895
    iget-object v14, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v12

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    .line 5896
    aput v13, v2, v12

    .line 5897
    iget-object v14, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v12

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    mul-int/lit8 v14, v14, 0xc

    add-int/2addr v14, v9

    add-int/2addr v14, v11

    aget v15, v3, v12

    add-int/2addr v14, v15

    add-int/2addr v13, v14

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 5900
    :cond_c
    iget-boolean v3, v0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v3, :cond_d

    .line 5902
    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v11

    sget-object v12, Landroid/support/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/support/media/ExifInterface$ExifTag;

    iget-object v12, v12, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    int-to-long v14, v13

    iget-object v7, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5903
    invoke-static {v14, v15, v7}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 5902
    invoke-virtual {v3, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int v3, p2, v13

    .line 5904
    iput v3, v0, Landroid/support/media/ExifInterface;->mThumbnailOffset:I

    .line 5905
    iget v3, v0, Landroid/support/media/ExifInterface;->mThumbnailLength:I

    add-int/2addr v13, v3

    :cond_d
    add-int/2addr v13, v4

    .line 5919
    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 5920
    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    sget-object v4, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v7, v2, v5

    int-to-long v7, v7

    iget-object v12, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5921
    invoke-static {v7, v8, v12}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 5920
    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5923
    :cond_e
    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 5924
    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    sget-object v4, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v4, v4, v9

    iget-object v4, v4, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v7, v2, v9

    int-to-long v7, v7

    iget-object v12, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5925
    invoke-static {v7, v8, v12}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 5924
    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5927
    :cond_f
    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 5928
    iget-object v3, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    sget-object v4, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v4, v4, v10

    iget-object v4, v4, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v5, v2, v10

    int-to-long v7, v5

    iget-object v5, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v5}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5933
    :cond_10
    invoke-virtual {v1, v13}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 5934
    sget-object v3, Landroid/support/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 5935
    iget-object v3, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_11

    const/16 v3, 0x4d4d

    goto :goto_6

    :cond_11
    const/16 v3, 0x4949

    :goto_6
    invoke-virtual {v1, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 5937
    iget-object v3, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/16 v3, 0x2a

    .line 5938
    invoke-virtual {v1, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    const-wide/16 v3, 0x8

    .line 5939
    invoke-virtual {v1, v3, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const/4 v3, 0x0

    .line 5942
    :goto_7
    sget-object v4, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v4, v4

    if-ge v3, v4, :cond_19

    .line 5943
    iget-object v4, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    .line 5946
    iget-object v4, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 5949
    aget v4, v2, v3

    add-int/2addr v4, v9

    iget-object v5, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0xc

    add-int/2addr v4, v5

    add-int/2addr v4, v11

    .line 5950
    iget-object v5, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 5952
    sget-object v8, Landroid/support/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v8, v8, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/media/ExifInterface$ExifTag;

    .line 5953
    iget v8, v8, Landroid/support/media/ExifInterface$ExifTag;->number:I

    .line 5954
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5955
    invoke-virtual {v7}, Landroid/support/media/ExifInterface$ExifAttribute;->size()I

    move-result v10

    .line 5957
    invoke-virtual {v1, v8}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 5958
    iget v8, v7, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v8}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 5959
    iget v8, v7, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v8}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    if-le v10, v11, :cond_13

    int-to-long v7, v4

    .line 5961
    invoke-virtual {v1, v7, v8}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    add-int/2addr v4, v10

    goto :goto_8

    .line 5964
    :cond_13
    iget-object v7, v7, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v7}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    if-ge v10, v11, :cond_12

    :goto_9
    if-ge v10, v11, :cond_12

    .line 5968
    invoke-virtual {v1, v6}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_14
    if-nez v3, :cond_15

    .line 5977
    iget-object v4, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 5978
    aget v4, v2, v11

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const-wide/16 v4, 0x0

    goto :goto_a

    :cond_15
    const-wide/16 v4, 0x0

    .line 5980
    invoke-virtual {v1, v4, v5}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 5984
    :goto_a
    iget-object v7, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 5985
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 5987
    iget-object v10, v8, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v10, v10

    if-le v10, v11, :cond_16

    .line 5988
    iget-object v10, v8, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    iget-object v8, v8, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v8, v8

    invoke-virtual {v1, v10, v6, v8}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    goto :goto_b

    :cond_17
    const-wide/16 v4, 0x0

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 5995
    :cond_19
    iget-boolean v2, v0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v2, :cond_1a

    .line 5996
    invoke-virtual/range {p0 .. p0}, Landroid/support/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6000
    :cond_1a
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return v13
.end method


# virtual methods
.method public flipHorizontally()V
    .locals 2

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 4072
    invoke-virtual {p0, v0, v1}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x2

    :goto_0
    :pswitch_7
    const-string v0, "Orientation"

    .line 4104
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public flipVertically()V
    .locals 2

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 4033
    invoke-virtual {p0, v0, v1}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x4

    :goto_0
    :pswitch_7
    const-string v0, "Orientation"

    .line 4065
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAltitude(D)D
    .locals 7

    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 4545
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    .line 4546
    invoke-virtual {p0, v2, v3}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_1

    if-ltz v2, :cond_1

    const/4 p1, 0x1

    if-ne v2, p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    int-to-double p1, p1

    .line 4549
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    return-wide v0

    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 3771
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3773
    sget-object v2, Landroid/support/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3774
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 3776
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3778
    iget p1, v0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    iget p1, v0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const-string p1, "ExifInterface"

    .line 3780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS Timestamp format is not rational. format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3783
    :cond_1
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/support/media/ExifInterface$Rational;

    if-eqz p1, :cond_3

    .line 3784
    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "%02d:%02d:%02d"

    .line 3788
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    iget-wide v3, v3, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-float v3, v3

    aget-object v4, p1, v2

    iget-wide v4, v4, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 3789
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v3, p1, v2

    iget-wide v3, v3, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-float v3, v3

    aget-object v4, p1, v2

    iget-wide v4, v4, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 3790
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-object v3, p1, v2

    iget-wide v3, v3, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-float v3, v3

    aget-object p1, p1, v2

    iget-wide v4, p1, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-float p1, v4

    div-float/2addr v3, p1

    float-to-int p1, v3

    .line 3791
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 3788
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string v0, "ExifInterface"

    .line 3785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid GPS Timestamp array. array="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3794
    :cond_4
    :try_start_0
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    :cond_5
    return-object v1
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3832
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    .line 3838
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3811
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 3817
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getDateTime()J
    .locals 9

    const-string v0, "DateTime"

    .line 4582
    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    .line 4583
    sget-object v3, Landroid/support/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 4584
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 4586
    :cond_0
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 4590
    :try_start_0
    sget-object v4, Landroid/support/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    .line 4592
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-string v0, "SubSecTime"

    .line 4594
    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    .line 4597
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    :goto_0
    const-wide/16 v7, 0x3e8

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    const-wide/16 v7, 0xa

    .line 4599
    div-long/2addr v5, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    add-long/2addr v3, v5

    :catch_0
    :cond_3
    return-wide v3

    :catch_1
    return-wide v1

    :cond_4
    :goto_1
    return-wide v1
.end method

.method public getGpsDateTime()J
    .locals 5

    const-string v0, "GPSDateStamp"

    .line 4618
    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSTimeStamp"

    .line 4619
    invoke-virtual {p0, v1}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 4620
    sget-object v4, Landroid/support/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 4621
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/support/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 4622
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 4626
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4628
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 4630
    :try_start_0
    sget-object v4, Landroid/support/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v2

    .line 4632
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v2

    :cond_2
    :goto_0
    return-wide v2
.end method

.method public getLatLong([F)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4455
    invoke-virtual {p0}, Landroid/support/media/ExifInterface;->getLatLong()[D

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4460
    :cond_0
    aget-wide v2, v0, v1

    double-to-float v2, v2

    aput v2, p1, v1

    const/4 v1, 0x1

    .line 4461
    aget-wide v2, v0, v1

    double-to-float v0, v2

    aput v0, p1, v1

    return v1
.end method

.method public getLatLong()[D
    .locals 12
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "GPSLatitude"

    .line 4474
    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSLatitudeRef"

    .line 4475
    invoke-virtual {p0, v1}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPSLongitude"

    .line 4476
    invoke-virtual {p0, v2}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSLongitudeRef"

    .line 4477
    invoke-virtual {p0, v3}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4481
    :try_start_0
    invoke-static {v0, v1}, Landroid/support/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v7

    .line 4482
    invoke-static {v2, v3}, Landroid/support/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v9

    .line 4483
    new-array v11, v4, [D

    aput-wide v7, v11, v6

    aput-wide v9, v11, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    const-string v7, "ExifInterface"

    .line 4485
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latitude/longitude values are not parseable. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "latValue=%s, latRef=%s, lngValue=%s, lngRef=%s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v6

    aput-object v1, v10, v5

    aput-object v2, v10, v4

    const/4 v0, 0x3

    aput-object v3, v10, v0

    .line 4486
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4485
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotationDegrees()I
    .locals 2

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 4137
    invoke-virtual {p0, v0, v1}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x5a

    return v0

    :pswitch_1
    const/16 v0, 0x10e

    return v0

    :pswitch_2
    const/16 v0, 0xb4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getThumbnail()[B
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 4328
    iget v0, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 4329
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 4389
    iget-boolean v0, p0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4391
    :cond_0
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_1

    .line 4392
    invoke-virtual {p0}, Landroid/support/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    .line 4395
    :cond_1
    iget v0, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    iget v0, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 4397
    :cond_2
    iget v0, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 4398
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 4400
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 4401
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v5, v2, 0x3

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    iget-object v6, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    add-int/lit8 v7, v5, 0x1

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v4, v6

    iget-object v6, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, v6, v5

    add-int/2addr v4, v5

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4405
    :cond_3
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const-string v4, "ImageLength"

    .line 4406
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 4407
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "ImageWidth"

    .line 4408
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 4410
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 4411
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 4412
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1

    .line 4396
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    iget v1, p0, Landroid/support/media/ExifInterface;->mThumbnailLength:I

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 4340
    iget-boolean v0, p0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4343
    :cond_0
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v0, :cond_1

    .line 4344
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    return-object v0

    .line 4350
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_3

    .line 4351
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4352
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4353
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_2
    const-string v2, "ExifInterface"

    const-string v3, "Cannot read thumbnail from inputstream without mark/reset support"

    .line 4355
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4378
    invoke-static {v0}, Landroid/support/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catch_0
    move-exception v2

    goto :goto_1

    .line 4358
    :cond_3
    :try_start_2
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4359
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_7

    .line 4365
    :try_start_3
    iget v2, p0, Landroid/support/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget v4, p0, Landroid/support/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 4368
    iget v2, p0, Landroid/support/media/ExifInterface;->mThumbnailLength:I

    new-array v2, v2, [B

    .line 4369
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iget v4, p0, Landroid/support/media/ExifInterface;->mThumbnailLength:I

    if-ne v3, v4, :cond_5

    .line 4372
    iput-object v2, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4378
    invoke-static {v0}, Landroid/support/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    .line 4370
    :cond_5
    :try_start_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Corrupted image"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4366
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Corrupted image"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4363
    :cond_7
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_0
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v0, v1

    :goto_1
    :try_start_5
    const-string v3, "ExifInterface"

    const-string v4, "Encountered exception while getting thumbnail"

    .line 4376
    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4378
    invoke-static {v0}, Landroid/support/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_1
    move-exception v1

    :goto_2
    invoke-static {v0}, Landroid/support/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public getThumbnailRange()[J
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 4436
    iget-boolean v0, p0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 4440
    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 4441
    iget v2, p0, Landroid/support/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 4442
    iget v2, p0, Landroid/support/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .line 4317
    iget-boolean v0, p0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public isFlipped()Z
    .locals 3

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 4113
    invoke-virtual {p0, v0, v1}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isThumbnailCompressed()Z
    .locals 2

    .line 4424
    iget v0, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public resetOrientation()V
    .locals 2

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 3995
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rotate(I)V
    .locals 5

    .line 4005
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_4

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 4009
    invoke-virtual {p0, v0, v1}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 4012
    sget-object v1, Landroid/support/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_1

    .line 4013
    sget-object v1, Landroid/support/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4014
    div-int/lit8 p1, p1, 0x5a

    add-int/2addr v0, p1

    rem-int/2addr v0, v3

    if-gez v0, :cond_0

    const/4 v2, 0x4

    :cond_0
    add-int/2addr v0, v2

    .line 4016
    sget-object p1, Landroid/support/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 4017
    :cond_1
    sget-object v1, Landroid/support/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4018
    sget-object v1, Landroid/support/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4019
    div-int/lit8 p1, p1, 0x5a

    add-int/2addr v0, p1

    rem-int/2addr v0, v3

    if-gez v0, :cond_2

    const/4 v2, 0x4

    :cond_2
    add-int/2addr v0, v2

    .line 4021
    sget-object p1, Landroid/support/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_3
    :goto_0
    const-string p1, "Orientation"

    .line 4026
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4006
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "degree should be a multiple of 90"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveAttributes()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4279
    iget-boolean v0, p0, Landroid/support/media/ExifInterface;->mIsSupportedFile:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 4282
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4288
    invoke-virtual {p0}, Landroid/support/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    .line 4290
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4291
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4292
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4300
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4301
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4302
    :try_start_2
    invoke-direct {p0, v2, v3}, Landroid/support/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4304
    invoke-static {v2}, Landroid/support/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4305
    invoke-static {v3}, Landroid/support/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4306
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4310
    iput-object v1, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    return-void

    :catchall_0
    move-exception v1

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    goto :goto_0

    :catchall_1
    move-exception v3

    goto :goto_0

    :catchall_2
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    .line 4304
    :goto_0
    invoke-static {v2}, Landroid/support/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4305
    invoke-static {v1}, Landroid/support/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4306
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v3

    .line 4293
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not rename to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4283
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4280
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAltitude(D)V
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    const-string v1, "GPSAltitude"

    .line 4560
    new-instance v2, Landroid/support/media/ExifInterface$Rational;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Landroid/support/media/ExifInterface$Rational;-><init>(DLandroid/support/media/ExifInterface$1;)V

    invoke-virtual {v2}, Landroid/support/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSAltitudeRef"

    .line 4561
    invoke-virtual {p0, p1, v0}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "ISOSpeedRatings"

    move-object/from16 v3, p1

    .line 3851
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PhotographicSensitivity"

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 3859
    sget-object v5, Landroid/support/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "GPSTimeStamp"

    .line 3860
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3861
    sget-object v5, Landroid/support/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 3862
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v3, "ExifInterface"

    .line 3863
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3866
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    .line 3867
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/1"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3870
    :cond_2
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 3871
    new-instance v7, Landroid/support/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v6, v8}, Landroid/support/media/ExifInterface$Rational;-><init>(DLandroid/support/media/ExifInterface$1;)V

    invoke-virtual {v7}, Landroid/support/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    goto :goto_1

    :catch_0
    const-string v3, "ExifInterface"

    .line 3873
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3879
    :goto_2
    sget-object v7, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v6, v7, :cond_15

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 3880
    iget-boolean v7, v0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    if-nez v7, :cond_4

    goto/16 :goto_e

    .line 3883
    :cond_4
    sget-object v7, Landroid/support/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/media/ExifInterface$ExifTag;

    if-eqz v7, :cond_14

    if-nez v1, :cond_5

    .line 3886
    iget-object v7, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 3889
    :cond_5
    invoke-static {v1}, Landroid/support/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 3891
    iget v9, v7, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v10, :cond_d

    iget v9, v7, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_6

    goto/16 :goto_6

    .line 3893
    :cond_6
    iget v9, v7, Landroid/support/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    iget v9, v7, Landroid/support/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v9, v11, :cond_7

    iget v9, v7, Landroid/support/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    .line 3894
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v9, v11, :cond_8

    .line 3895
    :cond_7
    iget v7, v7, Landroid/support/media/ExifInterface$ExifTag;->secondaryFormat:I

    goto/16 :goto_7

    .line 3896
    :cond_8
    iget v9, v7, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v9, v4, :cond_c

    iget v9, v7, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v11, 0x7

    if-eq v9, v11, :cond_c

    iget v9, v7, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    if-ne v9, v3, :cond_9

    goto/16 :goto_5

    :cond_9
    const-string v9, "ExifInterface"

    .line 3901
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Given tag ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") value didn\'t match with one of expected "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "formats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v13, v7, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Landroid/support/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne v12, v10, :cond_a

    const-string v7, ""

    goto :goto_3

    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v7, v7, Landroid/support/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v7, v13, v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (guess: "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v12, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    .line 3905
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v7, v7, v12

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_b

    const-string v7, ""

    goto :goto_4

    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 3906
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v10, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3901
    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 3899
    :cond_c
    :goto_5
    iget v7, v7, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    goto :goto_7

    .line 3892
    :cond_d
    :goto_6
    iget v7, v7, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    :goto_7
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    const-string v8, "ExifInterface"

    .line 3984
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Data format isn\'t one of expected formats: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :pswitch_1
    const-string v7, ","

    .line 3974
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3975
    array-length v8, v7

    new-array v8, v8, [D

    const/4 v9, 0x0

    .line 3976
    :goto_8
    array-length v10, v7

    if-ge v9, v10, :cond_e

    .line 3977
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 3979
    :cond_e
    iget-object v7, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    iget-object v9, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3980
    invoke-static {v8, v9}, Landroid/support/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 3979
    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :pswitch_2
    const-string v7, ","

    .line 3962
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3963
    array-length v8, v7

    new-array v8, v8, [Landroid/support/media/ExifInterface$Rational;

    const/4 v9, 0x0

    .line 3964
    :goto_9
    array-length v10, v7

    if-ge v9, v10, :cond_f

    .line 3965
    aget-object v10, v7, v9

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 3966
    new-instance v17, Landroid/support/media/ExifInterface$Rational;

    aget-object v11, v10, v5

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-long v12, v11

    aget-object v10, v10, v4

    .line 3967
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-long v14, v10

    const/16 v16, 0x0

    move-object/from16 v11, v17

    invoke-direct/range {v11 .. v16}, Landroid/support/media/ExifInterface$Rational;-><init>(JJLandroid/support/media/ExifInterface$1;)V

    aput-object v17, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 3969
    :cond_f
    iget-object v7, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    iget-object v9, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3970
    invoke-static {v8, v9}, Landroid/support/media/ExifInterface$ExifAttribute;->createSRational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 3969
    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :pswitch_3
    const-string v7, ","

    .line 3930
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3931
    array-length v8, v7

    new-array v8, v8, [I

    const/4 v9, 0x0

    .line 3932
    :goto_a
    array-length v10, v7

    if-ge v9, v10, :cond_10

    .line 3933
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 3935
    :cond_10
    iget-object v7, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    iget-object v9, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3936
    invoke-static {v8, v9}, Landroid/support/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 3935
    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :pswitch_4
    const-string v7, ","

    .line 3950
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3951
    array-length v8, v7

    new-array v8, v8, [Landroid/support/media/ExifInterface$Rational;

    const/4 v9, 0x0

    .line 3952
    :goto_b
    array-length v10, v7

    if-ge v9, v10, :cond_11

    .line 3953
    aget-object v10, v7, v9

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 3954
    new-instance v17, Landroid/support/media/ExifInterface$Rational;

    aget-object v11, v10, v5

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-long v12, v11

    aget-object v10, v10, v4

    .line 3955
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-long v14, v10

    const/16 v16, 0x0

    move-object/from16 v11, v17

    invoke-direct/range {v11 .. v16}, Landroid/support/media/ExifInterface$Rational;-><init>(JJLandroid/support/media/ExifInterface$1;)V

    aput-object v17, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 3957
    :cond_11
    iget-object v7, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    iget-object v9, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3958
    invoke-static {v8, v9}, Landroid/support/media/ExifInterface$ExifAttribute;->createURational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 3957
    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :pswitch_5
    const-string v7, ","

    .line 3940
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3941
    array-length v8, v7

    new-array v8, v8, [J

    const/4 v9, 0x0

    .line 3942
    :goto_c
    array-length v10, v7

    if-ge v9, v10, :cond_12

    .line 3943
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 3945
    :cond_12
    iget-object v7, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    iget-object v9, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3946
    invoke-static {v8, v9}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 3945
    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :pswitch_6
    const-string v7, ","

    .line 3920
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3921
    array-length v8, v7

    new-array v8, v8, [I

    const/4 v9, 0x0

    .line 3922
    :goto_d
    array-length v10, v7

    if-ge v9, v10, :cond_13

    .line 3923
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 3925
    :cond_13
    iget-object v7, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    iget-object v9, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3926
    invoke-static {v8, v9}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 3925
    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 3916
    :pswitch_7
    iget-object v7, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-static {v1}, Landroid/support/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 3911
    :pswitch_8
    iget-object v7, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-static {v1}, Landroid/support/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDateTime(J)V
    .locals 5

    const-wide/16 v0, 0x3e8

    .line 4571
    rem-long v0, p1, v0

    const-string v2, "DateTime"

    .line 4572
    sget-object v3, Landroid/support/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SubSecTime"

    .line 4573
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGpsInfo(Landroid/location/Location;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "GPSProcessingMethod"

    .line 4503
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4504
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/media/ExifInterface;->setLatLong(DD)V

    .line 4505
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/support/media/ExifInterface;->setAltitude(D)V

    const-string v0, "GPSSpeedRef"

    const-string v1, "K"

    .line 4507
    invoke-virtual {p0, v0, v1}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSSpeed"

    .line 4508
    new-instance v1, Landroid/support/media/ExifInterface$Rational;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    .line 4509
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-float v3, v3

    mul-float v2, v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/support/media/ExifInterface$Rational;-><init>(DLandroid/support/media/ExifInterface$1;)V

    invoke-virtual {v1}, Landroid/support/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4508
    invoke-virtual {p0, v0, v1}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4510
    sget-object v0, Landroid/support/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPSDateStamp"

    const/4 v1, 0x0

    .line 4511
    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSTimeStamp"

    const/4 v1, 0x1

    .line 4512
    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLatLong(DD)V
    .locals 4

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_3

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_3

    .line 4526
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p3, v0

    if-ltz v2, :cond_2

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v2, p3, v0

    if-gtz v2, :cond_2

    .line 4529
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GPSLatitudeRef"

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-ltz v3, :cond_0

    const-string v3, "N"

    goto :goto_0

    :cond_0
    const-string v3, "S"

    .line 4532
    :goto_0
    invoke-virtual {p0, v0, v3}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSLatitude"

    .line 4533
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroid/support/media/ExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSLongitudeRef"

    cmpl-double p2, p3, v1

    if-ltz p2, :cond_1

    const-string p2, "E"

    goto :goto_1

    :cond_1
    const-string p2, "W"

    .line 4534
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSLongitude"

    .line 4535
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-direct {p0, p2, p3}, Landroid/support/media/ExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4530
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Longitude value "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, " is not valid."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4527
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Latitude value "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " is not valid."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
