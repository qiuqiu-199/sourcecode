.class public Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PanasonicMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;",
        ">;"
    }
.end annotation


# static fields
.field private static final _sceneModes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x33

    .line 737
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Portrait"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Scenery"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Sports"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Night Portrait"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Program"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Aperture Priority"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Shutter Priority"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Macro"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Spot"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Manual"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Movie Preview"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "Panning"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "Simple"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "Color Effects"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "Self Portrait"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "Economy"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "Fireworks"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "Party"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "Snow"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "Night Scenery"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "Food"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "Baby"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "Soft Skin"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "Candlelight"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "Starry Night"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "High Sensitivity"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "Panorama Assist"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "Underwater"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "Beach"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "Aerial Photo"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "Sunset"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "Pet"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "Intelligent ISO"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "Clipboard"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "High Speed Continuous Shooting"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "Intelligent Auto"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v2, "Multi-aspect"

    const/16 v3, 0x26

    aput-object v2, v0, v3

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v2, "Transform"

    const/16 v3, 0x28

    aput-object v2, v0, v3

    const-string v2, "Flash Burst"

    const/16 v3, 0x29

    aput-object v2, v0, v3

    const-string v2, "Pin Hole"

    const/16 v3, 0x2a

    aput-object v2, v0, v3

    const-string v2, "Film Grain"

    const/16 v3, 0x2b

    aput-object v2, v0, v3

    const-string v2, "My Color"

    const/16 v3, 0x2c

    aput-object v2, v0, v3

    const-string v2, "Photo Frame"

    const/16 v3, 0x2d

    aput-object v2, v0, v3

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "HDR"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sput-object v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_sceneModes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method private buildFacesDescription([Lcom/drew/metadata/Face;)Ljava/lang/String;
    .locals 6
    .param p1    # [Lcom/drew/metadata/Face;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 728
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 730
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    const-string v4, "Face "

    .line 731
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/drew/metadata/Face;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_0

    .line 733
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private getTransformDescription(I)Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getByteArray(I)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 278
    :cond_0
    new-instance v1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v1, p1}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const/4 p1, 0x0

    .line 282
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result p1

    const/4 v2, 0x2

    .line 283
    invoke-virtual {v1, v2}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne p1, v3, :cond_1

    if-ne v1, v4, :cond_1

    const-string p1, "Slim Low"

    return-object p1

    :cond_1
    const/4 v3, -0x3

    if-ne p1, v3, :cond_2

    if-ne v1, v2, :cond_2

    const-string p1, "Slim High"

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    if-nez v1, :cond_3

    const-string p1, "Off"

    return-object p1

    :cond_3
    if-ne p1, v4, :cond_4

    if-ne v1, v4, :cond_4

    const-string p1, "Stretch Low"

    return-object p1

    :cond_4
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    if-ne v1, v2, :cond_5

    const-string p1, "Stretch High"

    return-object p1

    .line 296
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getAccelerometerXDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v1, 0x8d

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 440
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccelerometerYDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 451
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccelerometerZDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 429
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdvancedSceneModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0xe

    .line 576
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Outdoor/Illuminations/Flower/HDR Art"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Indoor/Architecture/Objects/HDR B&W"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "Creative"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "Auto"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/4 v1, 0x0

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v3, "Expressive"

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const-string v3, "Retro"

    const/4 v4, 0x7

    aput-object v3, v0, v4

    const-string v3, "Pure"

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const-string v3, "Elegant"

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "Monochrome"

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-string v1, "Dynamic Art"

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-string v1, "Silhouette"

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const/16 v1, 0x3d

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAfAreaModeDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_8

    .line 814
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 816
    aget v2, v0, v1

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const/16 v5, 0x20

    if-eq v2, v5, :cond_4

    const/16 v5, 0x40

    if-eq v2, v5, :cond_3

    packed-switch v2, :pswitch_data_0

    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 824
    :pswitch_0
    aget v2, v0, v4

    packed-switch v2, :pswitch_data_1

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "5-area"

    return-object v0

    :pswitch_2
    const-string v0, "Spot Focusing"

    return-object v0

    .line 818
    :pswitch_3
    aget v2, v0, v4

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Spot Mode Off"

    return-object v0

    :cond_2
    const-string v0, "Spot Mode On"

    return-object v0

    :cond_3
    const-string v0, "Face Detect"

    return-object v0

    .line 836
    :cond_4
    aget v2, v0, v4

    packed-switch v2, :pswitch_data_2

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    const-string v0, "3-area (right)"

    return-object v0

    :pswitch_5
    const-string v0, "3-area (center)"

    return-object v0

    :pswitch_6
    const-string v0, "3-area (left)"

    return-object v0

    :pswitch_7
    const-string v0, "Auto or Face Detect"

    return-object v0

    .line 830
    :cond_5
    aget v2, v0, v4

    if-eqz v2, :cond_7

    if-eq v2, v3, :cond_6

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v0, "1-area (high speed)"

    return-object v0

    :cond_7
    const-string v0, "1-area"

    return-object v0

    :cond_8
    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getAfAssistLampDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 681
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Fired"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Enabled but not used"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Disabled but required"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "Disabled and not required"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/16 v1, 0x31

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 256
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x20

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBabyAge1Description()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 918
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const v1, 0x8010

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getAge(I)Lcom/drew/metadata/Age;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 919
    :cond_0
    invoke-virtual {v0}, Lcom/drew/metadata/Age;->toFriendlyString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBabyAgeDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 911
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getAge(I)Lcom/drew/metadata/Age;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 912
    :cond_0
    invoke-virtual {v0}, Lcom/drew/metadata/Age;->toFriendlyString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBabyNameDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 544
    sget-object v0, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBracketSettingsDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x7

    .line 355
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "No Bracket"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "3 Images, Sequence 0/-/+"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "3 Images, Sequence -/0/+"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "5 Images, Sequence 0/-/+"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "5 Images, Sequence -/0/+"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "7 Images, Sequence 0/-/+"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "7 Images, Sequence -/0/+"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x45

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBurstModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 621
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "On"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Indefinite"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Unlimited"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x2a

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraOrientationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x6

    .line 457
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Rotate CW"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Rotate 180"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Rotate CCW"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Tilt Upwards"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Tile Downwards"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x8f

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCityDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 337
    sget-object v0, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v1, 0x6d

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClearRetouchDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 402
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x7c

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorEffectDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 604
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Warm"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Cool"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "Black & White"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "Sepia"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 689
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Natural"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Vivid"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x32

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    .line 563
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x39

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContrastModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 632
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_3

    const/16 v2, 0x110

    if-eq v1, v2, :cond_2

    const/16 v2, 0x120

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "Medium High"

    return-object v0

    :pswitch_1
    const-string v0, "Medium Low"

    return-object v0

    :pswitch_2
    const-string v0, "High"

    return-object v0

    :pswitch_3
    const-string v0, "Low"

    return-object v0

    :pswitch_4
    const-string v0, "Normal"

    return-object v0

    :cond_1
    const-string v0, "High"

    return-object v0

    :cond_2
    const-string v0, "Normal"

    return-object v0

    :cond_3
    const-string v0, "Low"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getConversionLensDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 705
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Wide"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Telephoto"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "Macro"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/16 v1, 0x35

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 325
    sget-object v0, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v1, 0x69

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    sparse-switch p1, :sswitch_data_0

    .line 202
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 115
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTransform1Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 200
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getBabyAge1Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 143
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTextStamp3Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 141
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTextStamp2Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 135
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getFlashFiredDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 133
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getSceneModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 145
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getMakernoteVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 195
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTouchAeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 193
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getShutterTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 191
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getHDRDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 189
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTimerRecordingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 187
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getSweepPanoramaDirectionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 185
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getPitchAngleDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 183
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getRollAngleDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 181
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getCameraOrientationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 179
    :sswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAccelerometerYDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 177
    :sswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAccelerometerXDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 175
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAccelerometerZDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 172
    :sswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getShadingCompensationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 170
    :sswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getPhotoStyleDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 168
    :sswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getClearRetouchDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 166
    :sswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIntelligentDRangeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 129
    :sswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIntelligentResolutionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 127
    :sswitch_17
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getLandmarkDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 125
    :sswitch_18
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getCityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 123
    :sswitch_19
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStateDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 121
    :sswitch_1a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getCountryDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 161
    :sswitch_1b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getLocationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 159
    :sswitch_1c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getBabyNameDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 151
    :sswitch_1d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTitleDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    :sswitch_1e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getFlashWarningDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 131
    :sswitch_1f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getRecognizedFacesDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 164
    :sswitch_20
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getLensFirmwareVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 117
    :sswitch_21
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIntelligentExposureDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 113
    :sswitch_22
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTransformDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 111
    :sswitch_23
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getDetectedFacesDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 157
    :sswitch_24
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getLongExposureNoiseReductionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 155
    :sswitch_25
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getFlashCurtainDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 153
    :sswitch_26
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getBracketSettingsDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 139
    :sswitch_27
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTextStamp1Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 109
    :sswitch_28
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAdvancedSceneModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :sswitch_29
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTextStampDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :sswitch_2a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getWorldTimeLocationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 105
    :sswitch_2b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 103
    :sswitch_2c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getConversionLensDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 101
    :sswitch_2d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getOpticalZoomModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 198
    :sswitch_2e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getBabyAgeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :sswitch_2f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getColorModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :sswitch_30
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAfAssistLampDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 95
    :sswitch_31
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getRotationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :sswitch_32
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getSelfTimerDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 91
    :sswitch_33
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getNoiseReductionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 89
    :sswitch_34
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getContrastModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :sswitch_35
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getBurstModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 85
    :sswitch_36
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getUptimeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :sswitch_37
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getColorEffectDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 147
    :sswitch_38
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getExifVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 149
    :sswitch_39
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getInternalSerialNumberDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 81
    :sswitch_3a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getUnknownDataDumpDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :sswitch_3b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAudioDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :sswitch_3c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getRecordModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :sswitch_3d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getMacroModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :sswitch_3e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getImageStabilizationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 71
    :sswitch_3f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getAfAreaModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :sswitch_40
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getFocusModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :sswitch_41
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :sswitch_42
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :sswitch_43
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getQualityModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_43
        0x2 -> :sswitch_42
        0x3 -> :sswitch_41
        0x7 -> :sswitch_40
        0xf -> :sswitch_3f
        0x1a -> :sswitch_3e
        0x1c -> :sswitch_3d
        0x1f -> :sswitch_3c
        0x20 -> :sswitch_3b
        0x21 -> :sswitch_3a
        0x25 -> :sswitch_39
        0x26 -> :sswitch_38
        0x28 -> :sswitch_37
        0x29 -> :sswitch_36
        0x2a -> :sswitch_35
        0x2c -> :sswitch_34
        0x2d -> :sswitch_33
        0x2e -> :sswitch_32
        0x30 -> :sswitch_31
        0x31 -> :sswitch_30
        0x32 -> :sswitch_2f
        0x33 -> :sswitch_2e
        0x34 -> :sswitch_2d
        0x35 -> :sswitch_2c
        0x39 -> :sswitch_2b
        0x3a -> :sswitch_2a
        0x3b -> :sswitch_29
        0x3d -> :sswitch_28
        0x3e -> :sswitch_27
        0x45 -> :sswitch_26
        0x48 -> :sswitch_25
        0x49 -> :sswitch_24
        0x4e -> :sswitch_23
        0x59 -> :sswitch_22
        0x5d -> :sswitch_21
        0x60 -> :sswitch_20
        0x61 -> :sswitch_1f
        0x62 -> :sswitch_1e
        0x65 -> :sswitch_1d
        0x66 -> :sswitch_1c
        0x67 -> :sswitch_1b
        0x69 -> :sswitch_1a
        0x6b -> :sswitch_19
        0x6d -> :sswitch_18
        0x6f -> :sswitch_17
        0x70 -> :sswitch_16
        0x79 -> :sswitch_15
        0x7c -> :sswitch_14
        0x89 -> :sswitch_13
        0x8a -> :sswitch_12
        0x8c -> :sswitch_11
        0x8d -> :sswitch_10
        0x8e -> :sswitch_f
        0x8f -> :sswitch_e
        0x90 -> :sswitch_d
        0x91 -> :sswitch_c
        0x93 -> :sswitch_b
        0x96 -> :sswitch_a
        0x9e -> :sswitch_9
        0x9f -> :sswitch_8
        0xab -> :sswitch_7
        0x8000 -> :sswitch_6
        0x8001 -> :sswitch_5
        0x8007 -> :sswitch_4
        0x8008 -> :sswitch_3
        0x8009 -> :sswitch_2
        0x8010 -> :sswitch_1
        0x8012 -> :sswitch_0
    .end sparse-switch
.end method

.method public getDetectedFacesDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    invoke-virtual {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getDetectedFaces()[Lcom/drew/metadata/Face;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->buildFacesDescription([Lcom/drew/metadata/Face;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExifVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x26

    const/4 v1, 0x2

    .line 879
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashCurtainDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 363
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "n/a"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "1st"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "2nd"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x48

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashFiredDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 239
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x8007

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashWarningDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 312
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "No"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Yes (Flash required but disabled)"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x62

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 806
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Auto"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Manual"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const/4 v3, 0x0

    aput-object v3, v0, v1

    const-string v1, "Auto, Focus Button"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "Auto, Continuous"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHDRDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v1, 0x9e

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 506
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_7

    const/16 v2, 0x64

    if-eq v1, v2, :cond_6

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_5

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_4

    const v2, 0x8064

    if-eq v1, v2, :cond_3

    const v2, 0x80c8

    if-eq v1, v2, :cond_2

    const v2, 0x812c

    if-eq v1, v2, :cond_1

    const-string v1, "Unknown (%d)"

    const/4 v2, 0x1

    .line 523
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "3 EV (Auto)"

    return-object v0

    :cond_2
    const-string v0, "2 EV (Auto)"

    return-object v0

    :cond_3
    const-string v0, "1 EV (Auto)"

    return-object v0

    :cond_4
    const-string v0, "3 EV"

    return-object v0

    :cond_5
    const-string v0, "2 EV"

    return-object v0

    :cond_6
    const-string v0, "1 EV"

    return-object v0

    :cond_7
    const-string v0, "Off"

    return-object v0
.end method

.method public getImageStabilizationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 245
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "On, Mode 1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Off"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "On, Mode 2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntelligentDRangeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 395
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Low"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Standard"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "High"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x79

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntelligentExposureDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 305
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Low"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Standard"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "High"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x5d

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntelligentResolutionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 556
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "Auto"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x70

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalSerialNumberDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x25

    .line 885
    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->get7BitStringFromBytes(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLandmarkDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 343
    sget-object v0, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v1, 0x6f

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLensFirmwareVersionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getByteArray(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 382
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 383
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 384
    aget-byte v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const-string v3, "."

    .line 386
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 550
    sget-object v0, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongExposureNoiseReductionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 370
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x49

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacroModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 233
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x1c

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMakernoteVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0x8000

    const/4 v1, 0x2

    .line 873
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoiseReductionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 649
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Standard (0)"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Low (-1)"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "High (+1)"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Lowest (-2)"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Highest (+2)"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpticalZoomModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 697
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Standard"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Extended"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x34

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoStyleDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x7

    .line 410
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Auto"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Standard or Custom"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Vivid"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Natural"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Monochrome"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Scenery"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Portrait"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x89

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPitchAngleDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 480
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.#"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    neg-int v0, v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualityModeDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x8

    .line 851
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "High"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Normal"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const/4 v3, 0x0

    aput-object v3, v0, v1

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const-string v4, "Very High"

    const/4 v5, 0x4

    aput-object v4, v0, v5

    const-string v4, "Raw"

    const/4 v5, 0x5

    aput-object v4, v0, v5

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const-string v3, "Motion Picture"

    const/4 v4, 0x7

    aput-object v3, v0, v4

    invoke-virtual {p0, v2, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecognizedFacesDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    invoke-virtual {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getRecognizedFaces()[Lcom/drew/metadata/Face;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->buildFacesDescription([Lcom/drew/metadata/Face;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 794
    sget-object v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_sceneModes:[Ljava/lang/String;

    const/16 v1, 0x1f

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRollAngleDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 468
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.#"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRotationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 668
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Rotate 270 CW"

    return-object v0

    :cond_2
    const-string v0, "Rotate 90 CW"

    return-object v0

    :cond_3
    const-string v0, "Rotate 180"

    return-object v0

    :cond_4
    const-string v0, "Horizontal"

    return-object v0
.end method

.method public getSceneModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 800
    sget-object v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_sceneModes:[Ljava/lang/String;

    const v1, 0x8001

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelfTimerDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 657
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "10 s"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "2 s"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShadingCompensationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 417
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x8a

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShutterTypeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 530
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Mechanical"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Electronic"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Hybrid"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x9f

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 331
    sget-object v0, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v1, 0x6b

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSweepPanoramaDirectionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 488
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Left to Right"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Right to Left"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Top to Bottom"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Bottom to Top"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x93

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextStamp1Description()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 215
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x3e

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextStamp2Description()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 221
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x8008

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextStamp3Description()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 227
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x8009

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextStampDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 209
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimerRecordingDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 495
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Time Lapse"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Stop-motion Animation"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x96

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 349
    sget-object v0, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getStringFromBytes(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchAeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 537
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xab

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransform1Description()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0x8012

    .line 268
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTransformDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransformDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x59

    .line 262
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getTransformDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnknownDataDumpDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x21

    .line 598
    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getByteLengthDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUptimeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 615
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 867
    invoke-virtual {p0, v0, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0xc

    .line 891
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Auto"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Daylight"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Cloudy"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "Incandescent"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "Manual"

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const/4 v1, 0x0

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v4, "Flash"

    const/4 v5, 0x7

    aput-object v4, v0, v5

    const/16 v4, 0x8

    aput-object v1, v0, v4

    const-string v1, "Black & White"

    const/16 v4, 0x9

    aput-object v1, v0, v4

    const-string v1, "Manual"

    const/16 v4, 0xa

    aput-object v1, v0, v4

    const-string v1, "Shade"

    const/16 v4, 0xb

    aput-object v1, v0, v4

    invoke-virtual {p0, v3, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWorldTimeLocationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 569
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Home"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Destination"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x3a

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
