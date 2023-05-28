.class public Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "NikonType1MakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getCcdSensitivityDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x6

    .line 125
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "ISO80"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v3, "ISO160"

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "ISO320"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "ISO100"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 150
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Color"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Monochrome"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConverterDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 83
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "None"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Fisheye converter"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 76
    :pswitch_0
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 74
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getConverterDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getDigitalZoomDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getFocusDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getCcdSensitivityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :pswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getImageAdjustmentDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getColorModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :pswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getQualityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getDigitalZoomDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDirectory;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDirectory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const-string v0, "No digital zoom"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

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

.method public getFocusDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDirectory;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDirectory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const-string v0, "Infinite"

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getImageAdjustmentDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 138
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Normal"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Bright +"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Bright -"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Contrast +"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "Contrast -"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualityDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x6

    .line 160
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "VGA Basic"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "VGA Normal"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "VGA Fine"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "SXGA Basic"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "SXGA Normal"

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "SXGA Fine"

    const/4 v4, 0x5

    aput-object v1, v0, v4

    invoke-virtual {p0, v3, v2, v0}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x7

    .line 111
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Auto"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Preset"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Daylight"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Incandescence"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "Florescence"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "Cloudy"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "SpeedLight"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
