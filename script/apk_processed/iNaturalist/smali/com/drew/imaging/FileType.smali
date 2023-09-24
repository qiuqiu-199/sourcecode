.class public final enum Lcom/drew/imaging/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/drew/imaging/FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/drew/imaging/FileType;

.field public static final enum Aac:Lcom/drew/imaging/FileType;

.field public static final enum Arw:Lcom/drew/imaging/FileType;

.field public static final enum Asf:Lcom/drew/imaging/FileType;

.field public static final enum Avi:Lcom/drew/imaging/FileType;

.field public static final enum Bmp:Lcom/drew/imaging/FileType;

.field public static final enum Cfbf:Lcom/drew/imaging/FileType;

.field public static final enum Cr2:Lcom/drew/imaging/FileType;

.field public static final enum Crw:Lcom/drew/imaging/FileType;

.field public static final enum Eps:Lcom/drew/imaging/FileType;

.field public static final enum Flv:Lcom/drew/imaging/FileType;

.field public static final enum Gif:Lcom/drew/imaging/FileType;

.field public static final enum Heif:Lcom/drew/imaging/FileType;

.field public static final enum Ico:Lcom/drew/imaging/FileType;

.field public static final enum Indd:Lcom/drew/imaging/FileType;

.field public static final enum Jpeg:Lcom/drew/imaging/FileType;

.field public static final enum Mov:Lcom/drew/imaging/FileType;

.field public static final enum Mp4:Lcom/drew/imaging/FileType;

.field public static final enum Mxf:Lcom/drew/imaging/FileType;

.field public static final enum Nef:Lcom/drew/imaging/FileType;

.field public static final enum Orf:Lcom/drew/imaging/FileType;

.field public static final enum Pcx:Lcom/drew/imaging/FileType;

.field public static final enum Pdf:Lcom/drew/imaging/FileType;

.field public static final enum Png:Lcom/drew/imaging/FileType;

.field public static final enum Psd:Lcom/drew/imaging/FileType;

.field public static final enum Qxp:Lcom/drew/imaging/FileType;

.field public static final enum Raf:Lcom/drew/imaging/FileType;

.field public static final enum Ram:Lcom/drew/imaging/FileType;

.field public static final enum Riff:Lcom/drew/imaging/FileType;

.field public static final enum Rtf:Lcom/drew/imaging/FileType;

.field public static final enum Rw2:Lcom/drew/imaging/FileType;

.field public static final enum Sit:Lcom/drew/imaging/FileType;

.field public static final enum Sitx:Lcom/drew/imaging/FileType;

.field public static final enum Swf:Lcom/drew/imaging/FileType;

.field public static final enum Tiff:Lcom/drew/imaging/FileType;

.field public static final enum Unknown:Lcom/drew/imaging/FileType;

.field public static final enum Vob:Lcom/drew/imaging/FileType;

.field public static final enum Wav:Lcom/drew/imaging/FileType;

.field public static final enum WebP:Lcom/drew/imaging/FileType;

.field public static final enum Zip:Lcom/drew/imaging/FileType;


# instance fields
.field private final _extensions:[Ljava/lang/String;

.field private final _longName:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private final _mimeType:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field

.field private final _name:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 34
    new-instance v7, Lcom/drew/imaging/FileType;

    const-string v1, "Unknown"

    const-string v3, "Unknown"

    const-string v4, "Unknown"

    const/4 v8, 0x0

    new-array v6, v8, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v7, Lcom/drew/imaging/FileType;->Unknown:Lcom/drew/imaging/FileType;

    .line 35
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v10, "Jpeg"

    const-string v12, "JPEG"

    const-string v13, "Joint Photographic Experts Group"

    const-string v14, "image/jpeg"

    const/4 v1, 0x3

    new-array v15, v1, [Ljava/lang/String;

    const-string v2, "jpg"

    aput-object v2, v15, v8

    const-string v2, "jpeg"

    const/4 v3, 0x1

    aput-object v2, v15, v3

    const-string v2, "jpe"

    const/4 v4, 0x2

    aput-object v2, v15, v4

    const/4 v11, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Jpeg:Lcom/drew/imaging/FileType;

    .line 36
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Tiff"

    const-string v19, "TIFF"

    const-string v20, "Tagged Image File Format"

    const-string v21, "image/tiff"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v5, "tiff"

    aput-object v5, v2, v8

    const-string/jumbo v5, "tif"

    aput-object v5, v2, v3

    const/16 v18, 0x2

    move-object/from16 v16, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Tiff:Lcom/drew/imaging/FileType;

    .line 37
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v10, "Psd"

    const-string v12, "PSD"

    const-string v13, "Photoshop Document"

    const-string v14, "image/vnd.adobe.photoshop"

    new-array v15, v3, [Ljava/lang/String;

    const-string v2, "psd"

    aput-object v2, v15, v8

    const/4 v11, 0x3

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Psd:Lcom/drew/imaging/FileType;

    .line 38
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Png"

    const-string v19, "PNG"

    const-string v20, "Portable Network Graphics"

    const-string v21, "image/png"

    new-array v2, v3, [Ljava/lang/String;

    const-string v5, "png"

    aput-object v5, v2, v8

    const/16 v18, 0x4

    move-object/from16 v16, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Png:Lcom/drew/imaging/FileType;

    .line 39
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v10, "Bmp"

    const-string v12, "BMP"

    const-string v13, "Device Independent Bitmap"

    const-string v14, "image/bmp"

    new-array v15, v3, [Ljava/lang/String;

    const-string v2, "bmp"

    aput-object v2, v15, v8

    const/4 v11, 0x5

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Bmp:Lcom/drew/imaging/FileType;

    .line 40
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Gif"

    const-string v19, "GIF"

    const-string v20, "Graphics Interchange Format"

    const-string v21, "image/gif"

    new-array v2, v3, [Ljava/lang/String;

    const-string v5, "gif"

    aput-object v5, v2, v8

    const/16 v18, 0x6

    move-object/from16 v16, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Gif:Lcom/drew/imaging/FileType;

    .line 41
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v10, "Ico"

    const-string v12, "ICO"

    const-string v13, "Windows Icon"

    const-string v14, "image/x-icon"

    new-array v15, v3, [Ljava/lang/String;

    const-string v2, "ico"

    aput-object v2, v15, v8

    const/4 v11, 0x7

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Ico:Lcom/drew/imaging/FileType;

    .line 42
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Pcx"

    const-string v19, "PCX"

    const-string v20, "PiCture eXchange"

    const-string v21, "image/x-pcx"

    new-array v2, v3, [Ljava/lang/String;

    const-string v5, "pcx"

    aput-object v5, v2, v8

    const/16 v18, 0x8

    move-object/from16 v16, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Pcx:Lcom/drew/imaging/FileType;

    .line 43
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v10, "Riff"

    const-string v12, "RIFF"

    const-string v13, "Resource Interchange File Format"

    new-array v15, v8, [Ljava/lang/String;

    const/16 v11, 0x9

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Riff:Lcom/drew/imaging/FileType;

    .line 44
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Wav"

    const-string v19, "WAV"

    const-string v20, "Waveform Audio File Format"

    const-string v21, "audio/vnd.wave"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v5, "wav"

    aput-object v5, v2, v8

    const-string/jumbo v5, "wave"

    aput-object v5, v2, v3

    const/16 v18, 0xa

    move-object/from16 v16, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Wav:Lcom/drew/imaging/FileType;

    .line 45
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v10, "Avi"

    const-string v12, "AVI"

    const-string v13, "Audio Video Interleaved"

    const-string/jumbo v14, "video/vnd.avi"

    new-array v15, v3, [Ljava/lang/String;

    const-string v2, "avi"

    aput-object v2, v15, v8

    const/16 v11, 0xb

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Avi:Lcom/drew/imaging/FileType;

    .line 46
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "WebP"

    const-string v19, "WebP"

    const-string v20, "WebP"

    const-string v21, "image/webp"

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v5, "webp"

    aput-object v5, v2, v8

    const/16 v18, 0xc

    move-object/from16 v16, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->WebP:Lcom/drew/imaging/FileType;

    .line 47
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v10, "Mov"

    const-string v12, "MOV"

    const-string v13, "QuickTime Movie"

    const-string/jumbo v14, "video/quicktime"

    new-array v15, v4, [Ljava/lang/String;

    const-string v2, "mov"

    aput-object v2, v15, v8

    const-string v2, "qt"

    aput-object v2, v15, v3

    const/16 v11, 0xd

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Mov:Lcom/drew/imaging/FileType;

    .line 48
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Mp4"

    const-string v19, "MP4"

    const-string v20, "MPEG-4 Part 14"

    const-string/jumbo v21, "video/mp4"

    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "mp4"

    aput-object v6, v5, v8

    const-string v6, "m4a"

    aput-object v6, v5, v3

    const-string v6, "m4p"

    aput-object v6, v5, v4

    const-string v6, "m4b"

    aput-object v6, v5, v1

    const-string v6, "m4r"

    const/4 v7, 0x4

    aput-object v6, v5, v7

    const-string v6, "m4v"

    const/4 v9, 0x5

    aput-object v6, v5, v9

    const/16 v18, 0xe

    move-object/from16 v16, v0

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    .line 49
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v11, "Heif"

    const-string v13, "HEIF"

    const-string v14, "High Efficiency Image File Format"

    const-string v15, "image/heif"

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "heif"

    aput-object v6, v5, v8

    const-string v6, "heic"

    aput-object v6, v5, v3

    const/16 v12, 0xf

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Heif:Lcom/drew/imaging/FileType;

    .line 50
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Eps"

    const-string v19, "EPS"

    const-string v20, "Encapsulated PostScript"

    const-string v21, "application/postscript"

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "eps"

    aput-object v6, v5, v8

    const-string v6, "epsf"

    aput-object v6, v5, v3

    const-string v6, "epsi"

    aput-object v6, v5, v4

    const/16 v18, 0x10

    move-object/from16 v16, v0

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Eps:Lcom/drew/imaging/FileType;

    .line 53
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v11, "Arw"

    const-string v13, "ARW"

    const-string v14, "Sony Camera Raw"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "arw"

    aput-object v6, v5, v8

    const/16 v12, 0x11

    const/4 v15, 0x0

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Arw:Lcom/drew/imaging/FileType;

    .line 55
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Crw"

    const-string v19, "CRW"

    const-string v20, "Canon Camera Raw"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "crw"

    aput-object v6, v5, v8

    const/16 v18, 0x12

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Crw:Lcom/drew/imaging/FileType;

    .line 57
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v11, "Cr2"

    const-string v13, "CR2"

    const-string v14, "Canon Camera Raw"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "cr2"

    aput-object v6, v5, v8

    const/16 v12, 0x13

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Cr2:Lcom/drew/imaging/FileType;

    .line 59
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Nef"

    const-string v19, "NEF"

    const-string v20, "Nikon Camera Raw"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "nef"

    aput-object v6, v5, v8

    const/16 v18, 0x14

    move-object/from16 v16, v0

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Nef:Lcom/drew/imaging/FileType;

    .line 61
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v11, "Orf"

    const-string v13, "ORF"

    const-string v14, "Olympus Camera Raw"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "orf"

    aput-object v6, v5, v8

    const/16 v12, 0x15

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Orf:Lcom/drew/imaging/FileType;

    .line 63
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Raf"

    const-string v19, "RAF"

    const-string v20, "FujiFilm Camera Raw"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "raf"

    aput-object v6, v5, v8

    const/16 v18, 0x16

    move-object/from16 v16, v0

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Raf:Lcom/drew/imaging/FileType;

    .line 65
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v11, "Rw2"

    const-string v13, "RW2"

    const-string v14, "Panasonic Camera Raw"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "rw2"

    aput-object v6, v5, v8

    const/16 v12, 0x17

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Rw2:Lcom/drew/imaging/FileType;

    .line 68
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Aac"

    const-string v19, "AAC"

    const-string v20, "Advanced Audio Coding"

    const-string v21, "audio/aac"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "m4a"

    aput-object v6, v5, v8

    const/16 v18, 0x18

    move-object/from16 v16, v0

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Aac:Lcom/drew/imaging/FileType;

    .line 69
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v11, "Asf"

    const-string v13, "ASF"

    const-string v14, "Advanced Systems Format"

    const-string/jumbo v15, "video/x-ms-asf"

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "asf"

    aput-object v6, v5, v8

    const-string/jumbo v6, "wma"

    aput-object v6, v5, v3

    const-string/jumbo v6, "wmv"

    aput-object v6, v5, v4

    const/16 v12, 0x19

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Asf:Lcom/drew/imaging/FileType;

    .line 70
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Cfbf"

    const-string v19, "CFBF"

    const-string v20, "Compound File Binary Format"

    const/16 v18, 0x1a

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Cfbf:Lcom/drew/imaging/FileType;

    .line 71
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v11, "Flv"

    const-string v13, "FLV"

    const-string v14, "Flash Video"

    const-string/jumbo v15, "video/x-flv"

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, ".flv"

    aput-object v6, v5, v8

    const-string v6, ".f4v,"

    aput-object v6, v5, v3

    const/16 v12, 0x1b

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Flv:Lcom/drew/imaging/FileType;

    .line 72
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Indd"

    const-string v19, "INDD"

    const-string v20, "INDesign Document"

    const-string v21, "application/octet-stream"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, ".indd"

    aput-object v6, v5, v8

    const/16 v18, 0x1c

    move-object/from16 v16, v0

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Indd:Lcom/drew/imaging/FileType;

    .line 73
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v11, "Mxf"

    const-string v13, "MXF"

    const-string v14, "Material Exchange Format"

    const-string v15, "application/mxf"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "mxf"

    aput-object v6, v5, v8

    const/16 v12, 0x1d

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Mxf:Lcom/drew/imaging/FileType;

    .line 74
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Pdf"

    const-string v19, "PDF"

    const-string v20, "Portable Document Format"

    const-string v21, "application/pdf"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "pdf"

    aput-object v6, v5, v8

    const/16 v18, 0x1e

    move-object/from16 v16, v0

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Pdf:Lcom/drew/imaging/FileType;

    .line 75
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v11, "Qxp"

    const-string v13, "QXP"

    const-string v14, "Quark XPress Document"

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "qzp"

    aput-object v6, v5, v8

    const-string v6, "qxd"

    aput-object v6, v5, v3

    const/16 v12, 0x1f

    const/4 v15, 0x0

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Qxp:Lcom/drew/imaging/FileType;

    .line 76
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Ram"

    const-string v19, "RAM"

    const-string v20, "RealAudio"

    const-string v21, "audio/vnd.rn-realaudio"

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "aac"

    aput-object v6, v5, v8

    const-string v6, "ra"

    aput-object v6, v5, v3

    const/16 v18, 0x20

    move-object/from16 v16, v0

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Ram:Lcom/drew/imaging/FileType;

    .line 77
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v11, "Rtf"

    const-string v13, "RTF"

    const-string v14, "Rich Text Format"

    const-string v15, "application/rtf"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "rtf"

    aput-object v6, v5, v8

    const/16 v12, 0x21

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Rtf:Lcom/drew/imaging/FileType;

    .line 78
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Sit"

    const-string v19, "SIT"

    const-string v20, "Stuffit Archive"

    const-string v21, "application/x-stuffit"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "sit"

    aput-object v6, v5, v8

    const/16 v18, 0x22

    move-object/from16 v16, v0

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Sit:Lcom/drew/imaging/FileType;

    .line 79
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v11, "Sitx"

    const-string v13, "SITX"

    const-string v14, "Stuffit X Archive"

    const-string v15, "application/x-stuffitx"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "sitx"

    aput-object v6, v5, v8

    const/16 v12, 0x23

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Sitx:Lcom/drew/imaging/FileType;

    .line 80
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Swf"

    const-string v19, "SWF"

    const-string v20, "Small Web Format"

    const-string v21, "application/vnd.adobe.flash-movie"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "swf"

    aput-object v6, v5, v8

    const/16 v18, 0x24

    move-object/from16 v16, v0

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Swf:Lcom/drew/imaging/FileType;

    .line 81
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v11, "Vob"

    const-string v13, "VOB"

    const-string v14, "Video Object"

    const-string/jumbo v15, "video/dvd"

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, ".vob"

    aput-object v6, v5, v8

    const/16 v12, 0x25

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Vob:Lcom/drew/imaging/FileType;

    .line 82
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v17, "Zip"

    const-string v19, "ZIP"

    const-string v20, "ZIP Archive"

    const-string v21, "application/zip"

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, ".zip"

    aput-object v6, v5, v8

    const-string v6, ".zipx"

    aput-object v6, v5, v3

    const/16 v18, 0x26

    move-object/from16 v16, v0

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Zip:Lcom/drew/imaging/FileType;

    const/16 v0, 0x27

    .line 32
    new-array v0, v0, [Lcom/drew/imaging/FileType;

    sget-object v5, Lcom/drew/imaging/FileType;->Unknown:Lcom/drew/imaging/FileType;

    aput-object v5, v0, v8

    sget-object v5, Lcom/drew/imaging/FileType;->Jpeg:Lcom/drew/imaging/FileType;

    aput-object v5, v0, v3

    sget-object v3, Lcom/drew/imaging/FileType;->Tiff:Lcom/drew/imaging/FileType;

    aput-object v3, v0, v4

    sget-object v3, Lcom/drew/imaging/FileType;->Psd:Lcom/drew/imaging/FileType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/drew/imaging/FileType;->Png:Lcom/drew/imaging/FileType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/drew/imaging/FileType;->Bmp:Lcom/drew/imaging/FileType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/drew/imaging/FileType;->Gif:Lcom/drew/imaging/FileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Ico:Lcom/drew/imaging/FileType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Pcx:Lcom/drew/imaging/FileType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Riff:Lcom/drew/imaging/FileType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Wav:Lcom/drew/imaging/FileType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Avi:Lcom/drew/imaging/FileType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->WebP:Lcom/drew/imaging/FileType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Mov:Lcom/drew/imaging/FileType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Heif:Lcom/drew/imaging/FileType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Eps:Lcom/drew/imaging/FileType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Arw:Lcom/drew/imaging/FileType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Crw:Lcom/drew/imaging/FileType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Cr2:Lcom/drew/imaging/FileType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Nef:Lcom/drew/imaging/FileType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Orf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Raf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Rw2:Lcom/drew/imaging/FileType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Aac:Lcom/drew/imaging/FileType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Asf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Cfbf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Flv:Lcom/drew/imaging/FileType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Indd:Lcom/drew/imaging/FileType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Mxf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Pdf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Qxp:Lcom/drew/imaging/FileType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Ram:Lcom/drew/imaging/FileType;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Rtf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Sit:Lcom/drew/imaging/FileType;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Sitx:Lcom/drew/imaging/FileType;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Swf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Vob:Lcom/drew/imaging/FileType;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Zip:Lcom/drew/imaging/FileType;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sput-object v0, Lcom/drew/imaging/FileType;->$VALUES:[Lcom/drew/imaging/FileType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lcom/drew/imaging/FileType;->_name:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/drew/imaging/FileType;->_longName:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/drew/imaging/FileType;->_mimeType:Ljava/lang/String;

    .line 94
    iput-object p6, p0, Lcom/drew/imaging/FileType;->_extensions:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/drew/imaging/FileType;
    .locals 1

    .line 32
    const-class v0, Lcom/drew/imaging/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/drew/imaging/FileType;

    return-object p0
.end method

.method public static values()[Lcom/drew/imaging/FileType;
    .locals 1

    .line 32
    sget-object v0, Lcom/drew/imaging/FileType;->$VALUES:[Lcom/drew/imaging/FileType;

    invoke-virtual {v0}, [Lcom/drew/imaging/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/imaging/FileType;

    return-object v0
.end method


# virtual methods
.method public getAllExtensions()[Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/drew/imaging/FileType;->_extensions:[Ljava/lang/String;

    return-object v0
.end method

.method public getCommonExtension()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/drew/imaging/FileType;->_extensions:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/drew/imaging/FileType;->_extensions:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/drew/imaging/FileType;->_extensions:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getLongName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/drew/imaging/FileType;->_longName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/drew/imaging/FileType;->_mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/drew/imaging/FileType;->_name:Ljava/lang/String;

    return-object v0
.end method
