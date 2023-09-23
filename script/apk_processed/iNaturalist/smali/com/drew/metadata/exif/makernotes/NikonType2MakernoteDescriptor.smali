.class public Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "NikonType2MakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method private getDistanceInMeters(I)D
    .locals 6

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x100

    :cond_0
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-float p1, p1

    const/high16 v4, 0x42200000    # 40.0f

    div-float/2addr p1, v4

    float-to-double v4, p1

    .line 369
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, v0

    return-wide v2
.end method

.method private getEVDescription(I)Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;->getIntArray(I)[I

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 309
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    array-length v1, p1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_2

    aget v1, p1, v2

    if-nez v1, :cond_1

    goto :goto_0

    .line 313
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 314
    aget v1, p1, v1

    const/4 v3, 0x1

    aget v3, p1, v3

    mul-int v1, v1, v3

    int-to-double v3, v1

    aget p1, p1, v2

    int-to-double v1, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v1

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " EV"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getActiveDLightingDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const v2, 0xffff

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 208
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
    const-string v0, "Light"

    return-object v0

    :pswitch_1
    const-string v0, "Off"

    return-object v0

    :cond_1
    const-string v0, "Auto"

    return-object v0

    :cond_2
    const-string v0, "Extra High"

    return-object v0

    :cond_3
    const-string v0, "High"

    return-object v0

    :cond_4
    const-string v0, "Normal"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAutoFlashCompensationDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x12

    .line 278
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getEVDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoFocusPositionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 233
    :cond_0
    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    aget v2, v0, v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    aget v2, v0, v2

    if-nez v2, :cond_2

    const/4 v2, 0x3

    aget v2, v0, v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 236
    aget v2, v0, v1

    packed-switch v2, :pswitch_data_0

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "Right"

    return-object v0

    :pswitch_1
    const-string v0, "Left"

    return-object v0

    :pswitch_2
    const-string v0, "Bottom"

    return-object v0

    :pswitch_3
    const-string v0, "Top"

    return-object v0

    :pswitch_4
    const-string v0, "Centre"

    return-object v0

    .line 234
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    invoke-virtual {v2, v1}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getColorModeDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    const/16 v1, 0x8d

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "MODE1"

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Mode I (sRGB)"

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getColorSpaceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 188
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sRGB"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Adobe RGB"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x1e

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    sparse-switch p1, :sswitch_data_0

    .line 100
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 98
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getPowerUpTimeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getHighISONoiseReductionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 94
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getNEFCompressionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getHueAdjustmentDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getColorModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getLensStopsDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 92
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getShootingModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 86
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getAutoFocusPositionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 84
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getFlashUsedDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 82
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getDigitalZoomDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getLensDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 90
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getLensTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 78
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getVignetteControlDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getActiveDLightingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 74
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getColorSpaceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :sswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getExposureTuningDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :sswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getFlashBracketCompensationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getFlashExposureCompensationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :sswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getAutoFlashCompensationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :sswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getExposureDifferenceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :sswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getProgramShiftDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :sswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getIsoSettingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 88
    :sswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getFirmwareVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_15
        0xd -> :sswitch_14
        0xe -> :sswitch_13
        0x12 -> :sswitch_12
        0x17 -> :sswitch_11
        0x18 -> :sswitch_10
        0x1c -> :sswitch_f
        0x1e -> :sswitch_e
        0x22 -> :sswitch_d
        0x2a -> :sswitch_c
        0x83 -> :sswitch_b
        0x84 -> :sswitch_a
        0x86 -> :sswitch_9
        0x87 -> :sswitch_8
        0x88 -> :sswitch_7
        0x89 -> :sswitch_6
        0x8b -> :sswitch_5
        0x8d -> :sswitch_4
        0x92 -> :sswitch_3
        0x93 -> :sswitch_2
        0xb1 -> :sswitch_1
        0xb6 -> :sswitch_0
    .end sparse-switch
.end method

.method public getDigitalZoomDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 258
    :cond_0
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "No digital zoom"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x digital zoom"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getExposureDifferenceDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0xe

    .line 272
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getEVDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureTuningDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x1c

    .line 296
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getEVDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirmwareVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 362
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashBracketCompensationDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x18

    .line 290
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getEVDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashExposureCompensationDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x17

    .line 284
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getEVDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashUsedDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0xa

    .line 127
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Flash Not Used"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Manual Flash"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v2, "Flash Not Ready"

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "External Flash"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Fired, Commander Mode"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Fired, TTL Mode"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x87

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighISONoiseReductionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x7

    .line 113
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Minimal"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Low"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v2, "Normal"

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "High"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0xb1

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHueAdjustmentDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "%s degrees"

    const/16 v1, 0x92

    .line 349
    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getFormattedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsoSettingDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 324
    aget v2, v0, v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    aget v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISO "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 325
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    invoke-virtual {v2, v1}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLensDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x84

    .line 332
    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getLensSpecificationDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLensFocusDistance()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;->getDecryptedIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 340
    array-length v1, v0

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "%.2fm"

    const/4 v2, 0x1

    .line 343
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xa

    aget v0, v0, v4

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getDistanceInMeters(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLensStopsDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x8b

    .line 302
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getEVDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLensTypeDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 176
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "AF"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "MF"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    const-string v2, "D"

    aput-object v2, v0, v5

    const-string v2, "G"

    aput-object v2, v0, v1

    const-string v1, "VR"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x83

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getBitFlagDescription(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNEFCompressionDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x8

    .line 144
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Lossy (Type 1)"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v3, "Uncompressed"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "Lossless"

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-string v2, "Lossy (Type 2)"

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/16 v2, 0x93

    invoke-virtual {p0, v2, v1, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerUpTimeDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0xb6

    .line 107
    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getEpochTimeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgramShiftDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0xd

    .line 266
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getEVDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShootingModeDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x8

    .line 160
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Single Frame"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Continuous"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    const-string v2, "Delay"

    aput-object v2, v0, v5

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "PC Control"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Exposure Bracketing"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Auto ISO"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "White-Balance Bracketing"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "IR Control"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x89

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->getBitFlagDescription(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVignetteControlDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 223
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
    const-string v0, "Low"

    return-object v0

    :pswitch_1
    const-string v0, "Off"

    return-object v0

    :cond_1
    const-string v0, "High"

    return-object v0

    :cond_2
    const-string v0, "Normal"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
