.class public Lcom/drew/metadata/png/PngDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PngDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/png/PngDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/png/PngDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/png/PngDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getBackgroundColorDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/drew/metadata/png/PngDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/png/PngDirectory;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/drew/metadata/png/PngDirectory;->getByteArray(I)[B

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/drew/metadata/png/PngDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/png/PngDirectory;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/drew/metadata/png/PngDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance v3, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v3, v0}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 162
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const/4 v5, 0x6

    if-eq v0, v5, :cond_1

    packed-switch v0, :pswitch_data_0

    return-object v2

    :pswitch_0
    const-string v0, "Palette Index %d"

    .line 170
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :pswitch_1
    const-string v0, "R %d, G %d, B %d"

    const/4 v5, 0x3

    .line 168
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    const/4 v1, 0x2

    invoke-virtual {v3}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :pswitch_2
    const-string v0, "Greyscale Level %d"

    .line 165
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2

    :cond_3
    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getColorTypeDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/drew/metadata/png/PngDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/png/PngDirectory;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/drew/metadata/png/PngDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/drew/imaging/png/PngColorType;->fromNumericValue(I)Lcom/drew/imaging/png/PngColorType;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 84
    :cond_1
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngColorType;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompressionTypeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    .line 90
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Deflate"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/png/PngDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 71
    :pswitch_0
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/png/PngDescriptor;->getUnitSpecifierDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/png/PngDescriptor;->getBackgroundColorDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/png/PngDescriptor;->getTextualDataDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/png/PngDescriptor;->getIsSrgbColorSpaceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/png/PngDescriptor;->getPaletteHasTransparencyDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/png/PngDescriptor;->getInterlaceMethodDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/png/PngDescriptor;->getFilterMethodDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/png/PngDescriptor;->getCompressionTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/png/PngDescriptor;->getColorTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFilterMethodDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    .line 96
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Adaptive"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/png/PngDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterlaceMethodDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 102
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "No Interlace"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Adam7 Interlace"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/png/PngDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsSrgbColorSpaceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 114
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Perceptual"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Relative Colorimetric"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Saturation"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Absolute Colorimetric"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/png/PngDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaletteHasTransparencyDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 108
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "Yes"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/png/PngDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextualDataDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/drew/metadata/png/PngDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/png/PngDirectory;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/drew/metadata/png/PngDirectory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/drew/lang/KeyValuePair;

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "%s: %s"

    const/4 v4, 0x2

    .line 146
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/drew/lang/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/drew/lang/KeyValuePair;->getValue()Lcom/drew/metadata/StringValue;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitSpecifierDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 126
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Unspecified"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Metres"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/png/PngDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
