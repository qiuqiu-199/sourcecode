.class public Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "OlympusMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getApertureValueDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getDoubleObject(I)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 850
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/drew/imaging/PhotographicConversions;->apertureToFStop(D)D

    move-result-wide v0

    .line 851
    invoke-static {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApexApertureDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf00b

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 323
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 324
    invoke-static {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApexBrightnessDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf02d

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 584
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    sub-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getApexFilmSpeedDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf009

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 288
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4009000000000000L    # 3.125

    mul-double v0, v0, v2

    .line 289
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.##"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 290
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 291
    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApexShutterSpeedTimeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf00a

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x31

    .line 306
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v0, v1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 307
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.###"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 308
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBWModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 863
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x203

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlackAndWhiteFilterDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0xf02b

    .line 571
    invoke-super {p0, v0}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlueBalanceDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v1, 0x1018

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 745
    aget v0, v0, v1

    int-to-short v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    .line 747
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBracketStepDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 350
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1/3 EV"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "2/3 EV"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "1 EV"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xf00f

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraIdDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v1, 0x209

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getByteArray(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 819
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public getCameraModelDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x8

    .line 532
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DiMAGE 7"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DiMAGE 5"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "DiMAGE S304"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "DiMAGE S404"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "DiMAGE 7i"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "DiMAGE 7Hi"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "DiMAGE A1"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "DiMAGE S414"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const v1, 0xf026

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraTypeDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 803
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v1, 0x207

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 807
    :cond_0
    sget-object v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->OlympusCameraTypes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 808
    sget-object v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->OlympusCameraTypes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    return-object v0
.end method

.method public getColorFilterDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf02a

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getColorMatrixDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v1, 0x1011

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 682
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 683
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 684
    aget v4, v0, v3

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    const-string v4, " "

    .line 686
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 688
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public getColorModeCameraSettingDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 558
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Natural Color"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Black & White"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Vivid Color"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Solarization"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "AdobeRGB"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0xf029

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 661
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Natural Colour"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Black & White"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Vivid Colour"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Solarization"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "AdobeRGB"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x101

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContrastCameraSettingDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf021

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 753
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "High"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Normal"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Low"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x1029

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf016

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 407
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 408
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/16 v2, 0x10

    shr-long/2addr v5, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    .line 409
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/16 v0, 0x8

    shr-long/2addr v5, v0

    and-long/2addr v3, v5

    long-to-int v0, v3

    add-int/lit16 v0, v0, 0x7b2

    .line 411
    invoke-static {v0, v2, v1}, Lcom/drew/lang/DateUtil;->isValidDate(III)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "Invalid date"

    return-object v0

    :cond_1
    const-string v3, "%04d-%02d-%02d"

    const/4 v4, 0x3

    .line 414
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecSwitchPositionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 627
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Exposure"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Contrast"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Saturation"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Filter"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0xf033

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    packed-switch p1, :pswitch_data_7

    sparse-switch p1, :sswitch_data_0

    .line 206
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 106
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getPreviewImageValidDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 104
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 98
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getWbModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getColorMatrixDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 94
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 88
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getOneTouchWbDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 78
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getCameraIdDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getCameraTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getMakernoteVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 203
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getDecSwitchPositionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 201
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocusAreaDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 199
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocusModeCameraSettingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 197
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getWideFocusZoneDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 195
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSpotFocusPointYCoordinateDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 193
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSpotFocusPointXCoordinateDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 191
    :pswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getApexBrightnessDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 189
    :pswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getInternalFlashDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 187
    :pswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getBlackAndWhiteFilterDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 185
    :pswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getColorFilterDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 183
    :pswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getColorModeCameraSettingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 181
    :pswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFolderNameDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 179
    :pswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIntervalModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 177
    :pswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getCameraModelDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 175
    :pswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIsoSettingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 173
    :pswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFlashCompensationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 171
    :pswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSubjectProgramDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 169
    :pswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSharpnessCameraSettingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 167
    :pswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getContrastCameraSettingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 165
    :pswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSaturationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 163
    :pswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getWhiteBalanceBlueDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 161
    :pswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getWhiteBalanceGreenDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 159
    :pswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getWhiteBalanceRedDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 157
    :pswitch_17
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getLastFileNumberDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 155
    :pswitch_18
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFileNumberMemoryDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 152
    :pswitch_19
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getMaxApertureAtFocalLengthDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 150
    :pswitch_1a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getTimeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 148
    :pswitch_1b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getDateDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 146
    :pswitch_1c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFlashFiredDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 144
    :pswitch_1d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocusDistanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 142
    :pswitch_1e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocalLengthDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 140
    :pswitch_1f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIntervalNumberDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 138
    :pswitch_20
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIntervalLengthDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 135
    :pswitch_21
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getBracketStepDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 133
    :pswitch_22
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getExposureCompensationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 131
    :pswitch_23
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getDigitalZoomCameraSettingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 129
    :pswitch_24
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getMacroModeCameraSettingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 127
    :pswitch_25
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getApexApertureDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 125
    :pswitch_26
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getApexShutterSpeedTimeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 123
    :pswitch_27
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getApexFilmSpeedDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 121
    :pswitch_28
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getMeteringModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    :pswitch_29
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getShootingModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 117
    :pswitch_2a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getImageQualityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 115
    :pswitch_2b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getImageSizeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 113
    :pswitch_2c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 111
    :pswitch_2d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFlashModeCameraSettingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 109
    :pswitch_2e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getExposureModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 102
    :pswitch_2f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getBlueBalanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 100
    :pswitch_30
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getRedBalanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 92
    :pswitch_31
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocusModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 90
    :pswitch_32
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocusRangeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 86
    :pswitch_33
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getApertureValueDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 84
    :pswitch_34
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIsoValueDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 82
    :pswitch_35
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getShutterSpeedDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 74
    :pswitch_36
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocalPlaneDiagonalDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :pswitch_37
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getDigitalZoomDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :pswitch_38
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getBWModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_39
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getMacroModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_3a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getJpegQualityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :pswitch_3b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getSpecialModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_3c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getImageQuality2Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :pswitch_3d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getImageQuality1Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :pswitch_3e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getColorModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x200
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1000
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x100a
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1017
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xf002
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xf011
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xf01b
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x207 -> :sswitch_8
        0x209 -> :sswitch_7
        0x302 -> :sswitch_6
        0x1004 -> :sswitch_5
        0x100f -> :sswitch_4
        0x1011 -> :sswitch_3
        0x1015 -> :sswitch_2
        0x1029 -> :sswitch_1
        0x1035 -> :sswitch_0
    .end sparse-switch
.end method

.method public getDigitalZoomCameraSettingDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 336
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Electronic magnification"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Digital zoom 2x"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xf00d

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigitalZoomDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v1, 0x204

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 786
    invoke-virtual {v0, v1}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureCompensationDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf00e

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 343
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    sub-double/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " EV"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getExposureModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 213
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "P"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "A"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "S"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "M"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0xf002

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileNumberMemoryDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 451
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xf01b

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashCompensationDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf024

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 519
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 520
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x6

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " EV"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFlashFiredDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 394
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "No"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Yes"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xf015

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashModeCameraSettingDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 219
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Red-eye reduction"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Rear flash sync"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Wireless"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0xf003

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 777
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Off"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x1004

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalLengthDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf013

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFocalLengthDescription(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFocalPlaneDiagonalDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 796
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mm"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusAreaDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 621
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Wide Focus (Normal)"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Spot Focus"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xf032

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusDistanceDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf014

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const-string v0, "Infinity"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mm"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFocusModeCameraSettingDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 615
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Auto Focus"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Manual Focus"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xf031

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 765
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Auto"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Manual"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x100b

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusRangeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 771
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Macro"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x100a

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFolderNameDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 552
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Standard Form"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Data Form"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xf028

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageQuality1Description()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 650
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Raw"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Super Fine"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Fine"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Standard"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Extra Fine"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x102

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageQuality2Description()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 639
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Raw"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Super Fine"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Fine"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Standard"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Extra Fine"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x103

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageQualityDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x6

    .line 253
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Raw"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Super Fine"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Fine"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Standard"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Economy"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Extra Fine"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, 0xf006

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageSizeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 247
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "2560 x 1920"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "1600 x 1200"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "1280 x 960"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "640 x 480"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0xf005

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalFlashDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 577
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Did Not Fire"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Fired"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xf02c

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntervalLengthDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    invoke-virtual {v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->isIntervalMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "N/A"

    return-object v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf011

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " min"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIntervalModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 546
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Still Image"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Time Lapse Movie"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xf027

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntervalNumberDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    invoke-virtual {v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->isIntervalMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "N/A"

    return-object v0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf012

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIsoSettingDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x6

    .line 526
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "100"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "200"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "400"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "800"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Auto"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "64"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, 0xf025

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsoValueDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 841
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    sub-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJpegQualityDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v1, 0x207

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x201

    if-eqz v0, :cond_6

    .line 873
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    invoke-virtual {v2, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v2, "SX"

    .line 877
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SX151"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "D4322"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 880
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "Super High Quality (Fine)"

    return-object v0

    :pswitch_1
    const-string v0, "High Quality (Normal)"

    return-object v0

    :pswitch_2
    const-string v0, "Standard Quality (Low)"

    return-object v0

    :cond_3
    const-string v0, "RAW"

    return-object v0

    .line 896
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x21

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    const-string v0, "Small-Fine"

    return-object v0

    :pswitch_4
    const-string v0, "Medium-Fine"

    return-object v0

    :pswitch_5
    const-string v0, "RAW"

    return-object v0

    :pswitch_6
    const-string v0, "Super High Quality (Fine)"

    return-object v0

    :pswitch_7
    const-string v0, "High Quality (Normal)"

    return-object v0

    :pswitch_8
    const-string v0, "Standard Quality (Low)"

    return-object v0

    :cond_5
    const-string v0, "Uncompressed"

    return-object v0

    :cond_6
    const/4 v0, 0x3

    .line 918
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Standard Quality"

    aput-object v3, v0, v2

    const-string v2, "High Quality"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v4, "Super High Quality"

    aput-object v4, v0, v2

    invoke-virtual {p0, v1, v3, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getLastFileNumberDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf01c

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const-string v0, "File Number Memory Off"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMacroModeCameraSettingDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 330
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xf00c

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacroModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 857
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal (no macro)"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Macro"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x202

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMakernoteVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 633
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxApertureAtFocalLengthDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf017

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 444
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 445
    invoke-static {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeteringModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 274
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Multi-Segment"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Centre Weighted"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Spot"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xf008

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOneTouchWbDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 825
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "On (Preset)"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x302

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewImageValidDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 759
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "No"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Yes"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x1035

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRedBalanceDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v1, 0x1017

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 733
    aget v0, v0, v1

    int-to-short v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    .line 735
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaturationDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf020

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSharpnessCameraSettingDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 506
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Hard"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Normal"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Soft"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xf022

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 672
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Hard"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Soft"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x100f

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShootingModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x8

    .line 259
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Single"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Continuous"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Self Timer"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "Bracketing"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Interval"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "UHS Continuous"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "HS Continuous"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const v1, 0xf007

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShutterSpeedDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x1000

    .line 831
    invoke-super {p0, v0}, Lcom/drew/metadata/TagDescriptor;->getShutterSpeedDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpecialModeDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 928
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 931
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    const-string v0, ""

    return-object v0

    .line 933
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 935
    aget-wide v3, v0, v3

    long-to-int v3, v3

    packed-switch v3, :pswitch_data_0

    const-string v3, "Unknown picture taking mode"

    .line 949
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v3, "Panorama picture taking mode"

    .line 946
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v3, "Fast picture taking mode"

    .line 943
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v3, "Unknown picture taking mode"

    .line 940
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v3, "Normal picture taking mode"

    .line 937
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    :goto_0
    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 954
    aget-wide v5, v0, v2

    long-to-int v3, v5

    packed-switch v3, :pswitch_data_1

    const-string v3, " / "

    .line 967
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "th in a sequence"

    .line 969
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v2, " / 3rd in a sequence"

    .line 964
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const-string v2, " / 2nd in a sequence"

    .line 961
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    const-string v2, " / 1st in a sequence"

    .line 958
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    :cond_2
    :goto_1
    :pswitch_7
    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    .line 974
    aget-wide v2, v0, v4

    long-to-int v0, v2

    packed-switch v0, :pswitch_data_2

    goto :goto_2

    :pswitch_8
    const-string v0, " / Top to bottom panorama direction"

    .line 985
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_9
    const-string v0, " / Bottom to top panorama direction"

    .line 982
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_a
    const-string v0, " / Right to left panorama direction"

    .line 979
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_b
    const-string v0, " / Left to right panorama direction"

    .line 976
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public getSpotFocusPointXCoordinateDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0xf02e

    .line 591
    invoke-super {p0, v0}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpotFocusPointYCoordinateDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0xf02f

    .line 597
    invoke-super {p0, v0}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectProgramDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x6

    .line 512
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "None"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Portrait"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Text"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Night Portrait"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Sunset"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Sports Action"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, 0xf023

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf017

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 427
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x8

    shr-long/2addr v1, v3

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 428
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/16 v2, 0x10

    shr-long/2addr v5, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    .line 429
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    and-long/2addr v3, v5

    long-to-int v0, v3

    .line 431
    invoke-static {v1, v2, v0}, Lcom/drew/lang/DateUtil;->isValidTime(III)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "Invalid time"

    return-object v0

    :cond_1
    const-string v3, "%02d:%02d:%02d"

    const/4 v4, 0x3

    .line 434
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWbModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const/16 v1, 0x1015

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "%d %d"

    const/4 v2, 0x2

    .line 698
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1 0"

    .line 700
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Auto"

    return-object v0

    :cond_1
    const-string v1, "1 2"

    .line 702
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Auto (2)"

    return-object v0

    :cond_2
    const-string v1, "1 4"

    .line 704
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Auto (4)"

    return-object v0

    :cond_3
    const-string v1, "2 2"

    .line 706
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "3000 Kelvin"

    return-object v0

    :cond_4
    const-string v1, "2 3"

    .line 708
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "3700 Kelvin"

    return-object v0

    :cond_5
    const-string v1, "2 4"

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "4000 Kelvin"

    return-object v0

    :cond_6
    const-string v1, "2 5"

    .line 712
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "4500 Kelvin"

    return-object v0

    :cond_7
    const-string v1, "2 6"

    .line 714
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "5500 Kelvin"

    return-object v0

    :cond_8
    const-string v1, "2 7"

    .line 716
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "6500 Kelvin"

    return-object v0

    :cond_9
    const-string v1, "2 8"

    .line 718
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "7500 Kelvin"

    return-object v0

    :cond_a
    const-string v1, "3 0"

    .line 720
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "One-touch"

    return-object v0

    .line 723
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalanceBlueDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf01f

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 485
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0xd

    .line 226
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Auto"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Daylight"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Cloudy"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Tungsten"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v2, "Custom"

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v2, "Fluorescent"

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const-string v2, "Fluorescent 2"

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Custom 2"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "Custom 3"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const v1, 0xf004

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalanceGreenDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf01e

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 477
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWhiteBalanceRedDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    const v1, 0xf01d

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    .line 469
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWideFocusZoneDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 603
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "No Zone or AF Failed"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Center Zone (Horizontal Orientation)"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Center Zone (Vertical Orientation)"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Left Zone"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Right Zone"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0xf030

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
