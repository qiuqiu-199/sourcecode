.class public abstract Lcom/drew/metadata/exif/ExifDescriptorBase;
.super Lcom/drew/metadata/TagDescriptor;
.source "ExifDescriptorBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/drew/metadata/Directory;",
        ">",
        "Lcom/drew/metadata/TagDescriptor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final _allowDecimalRepresentationOfRationals:Z


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_allowDecimalRepresentationOfRationals:Z

    return-void
.end method

.method private decodeCfaPattern(I)[I
    .locals 11
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 815
    :cond_0
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 817
    array-length v0, p1

    new-array v0, v0, [I

    .line 818
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    .line 819
    aget-byte v1, p1, v2

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 823
    :cond_2
    array-length v0, p1

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    new-array v0, v0, [I

    .line 826
    :try_start_0
    new-instance v4, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v4, p1}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 829
    invoke-virtual {v4, v2}, Lcom/drew/lang/ByteArrayReader;->getInt16(I)S

    move-result v5

    .line 830
    invoke-virtual {v4, v3}, Lcom/drew/lang/ByteArrayReader;->getInt16(I)S

    move-result v6

    .line 832
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    mul-int v8, v5, v6

    add-int/2addr v8, v3

    .line 834
    array-length v9, p1

    const/4 v10, 0x1

    if-le v8, v9, :cond_3

    .line 837
    invoke-virtual {v4}, Lcom/drew/lang/ByteArrayReader;->isMotorolaByteOrder()Z

    move-result v5

    xor-int/2addr v5, v10

    invoke-virtual {v4, v5}, Lcom/drew/lang/ByteArrayReader;->setMotorolaByteOrder(Z)V

    .line 838
    invoke-virtual {v4, v2}, Lcom/drew/lang/ByteArrayReader;->getInt16(I)S

    move-result v5

    .line 839
    invoke-virtual {v4, v3}, Lcom/drew/lang/ByteArrayReader;->getInt16(I)S

    move-result v6

    .line 841
    array-length v8, p1

    mul-int v9, v5, v6

    add-int/2addr v9, v3

    if-lt v8, v9, :cond_4

    .line 842
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_1

    .line 845
    :cond_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 847
    :cond_4
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 849
    aput v5, v0, v2

    .line 850
    aput v6, v0, v10

    .line 852
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, -0x2

    .line 853
    invoke-virtual {v4, v1}, Lcom/drew/lang/ByteArrayReader;->getInt8(I)B

    move-result v3

    aput v3, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 856
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO exception processing data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method private static formatCFAPattern([I)Ljava/lang/String;
    .locals 7
    .param p0    # [I
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 764
    :cond_0
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const-string p0, "<truncated data>"

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 766
    aget v2, p0, v0

    const/4 v3, 0x1

    if-nez v2, :cond_2

    aget v2, p0, v3

    if-nez v2, :cond_2

    const-string p0, "<zero pattern size>"

    return-object p0

    .line 769
    :cond_2
    aget v2, p0, v0

    aget v4, p0, v3

    mul-int v2, v2, v4

    add-int/2addr v2, v1

    .line 770
    array-length v4, p0

    if-le v2, v4, :cond_3

    const-string p0, "<invalid pattern size>"

    return-object p0

    :cond_3
    const/4 v4, 0x7

    .line 773
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Red"

    aput-object v5, v4, v0

    const-string v0, "Green"

    aput-object v0, v4, v3

    const-string v0, "Blue"

    aput-object v0, v4, v1

    const/4 v0, 0x3

    const-string v5, "Cyan"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "Magenta"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "Yellow"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "White"

    aput-object v5, v4, v0

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    .line 776
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v1, v2, :cond_7

    .line 779
    aget v5, p0, v1

    array-length v6, v4

    sub-int/2addr v6, v3

    if-gt v5, v6, :cond_4

    .line 780
    aget v5, p0, v1

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v5, "Unknown"

    .line 782
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v5, v1, -0x2

    .line 784
    aget v6, p0, v3

    rem-int/2addr v5, v6

    if-nez v5, :cond_5

    const-string v5, ","

    .line 785
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v2, -0x1

    if-eq v1, v5, :cond_6

    const-string v5, "]["

    .line 787
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const-string p0, "]"

    .line 789
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUnicodeDescription(I)Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 320
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public get35mmFilmEquivFocalLengthDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0xa405

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 587
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Unknown"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalLengthDescription(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getApertureValueDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x9202

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getDoubleObject(I)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 898
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/drew/imaging/PhotographicConversions;->apertureToFStop(D)D

    move-result-wide v0

    .line 899
    invoke-static {v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitsPerSampleDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 437
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " bits/component/pixel"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCfaPattern2Description()Ljava/lang/String;
    .locals 9
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x828e

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 740
    :cond_0
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v3, 0x828d

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const-string v0, "Repeat Pattern not found for CFAPattern (%s)"

    .line 742
    new-array v2, v4, [Ljava/lang/Object;

    invoke-super {p0, v1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 744
    :cond_1
    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    array-length v5, v0

    aget v7, v2, v3

    aget v8, v2, v4

    mul-int v7, v7, v8

    if-ne v5, v7, :cond_3

    .line 746
    array-length v1, v0

    add-int/2addr v1, v6

    new-array v1, v1, [I

    .line 747
    aget v5, v2, v3

    aput v5, v1, v3

    .line 748
    aget v2, v2, v4

    aput v2, v1, v4

    .line 750
    :goto_0
    array-length v2, v0

    if-ge v3, v2, :cond_2

    add-int/lit8 v2, v3, 0x2

    .line 751
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 753
    :cond_2
    invoke-static {v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->formatCFAPattern([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "Unknown Pattern (%s)"

    .line 756
    new-array v2, v4, [Ljava/lang/Object;

    invoke-super {p0, v1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCfaPatternDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0xa302

    .line 720
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->decodeCfaPattern(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->formatCFAPattern([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorSpaceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 971
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0xa001

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 974
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "sRGB"

    return-object v0

    .line 976
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_2

    const-string v0, "Undefined"

    return-object v0

    .line 978
    :cond_2
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
.end method

.method public getComponentConfigurationDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1207
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x9101

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x7

    .line 1210
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Y"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v4, "Cb"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "Cr"

    aput-object v4, v1, v2

    const-string v2, "R"

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const/4 v2, 0x5

    const-string v5, "G"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "B"

    aput-object v5, v1, v2

    .line 1211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1212
    :goto_0
    array-length v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 1213
    aget v5, v0, v3

    if-lez v5, :cond_1

    .line 1214
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 1215
    aget-object v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1218
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompressedAverageBitsPerPixelDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1154
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x9102

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 1157
    invoke-virtual {v0, v1}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1158
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->isInteger()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bit/pixel"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bits/pixel"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompressionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1091
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1094
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    packed-switch v1, :pswitch_data_6

    packed-switch v1, :pswitch_data_7

    packed-switch v1, :pswitch_data_8

    sparse-switch v1, :sswitch_data_0

    .line 1137
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

    :sswitch_0
    const-string v0, "Pentax PEF Compressed"

    return-object v0

    :sswitch_1
    const-string v0, "Kodak DCR Compressed"

    return-object v0

    :sswitch_2
    const-string v0, "Lossy JPEG"

    return-object v0

    :sswitch_3
    const-string v0, "JBIG2 TIFF FX"

    return-object v0

    :sswitch_4
    const-string v0, "JBIG"

    return-object v0

    :sswitch_5
    const-string v0, "Kodak KDC Compressed"

    return-object v0

    :sswitch_6
    const-string v0, "Thunderscan"

    return-object v0

    :sswitch_7
    const-string v0, "Kodak 262"

    return-object v0

    :sswitch_8
    const-string v0, "JPEG"

    return-object v0

    :pswitch_0
    const-string v0, "Microsoft Document Imaging (MDI) Vector"

    return-object v0

    :pswitch_1
    const-string v0, "Microsoft Document Imaging (MDI) Progressive Transform Codec"

    return-object v0

    :pswitch_2
    const-string v0, "Microsoft Document Imaging (MDI) Binary Level Codec"

    return-object v0

    :pswitch_3
    const-string v0, "Nikon NEF Compressed"

    return-object v0

    :pswitch_4
    const-string v0, "JPEG 2000"

    return-object v0

    :pswitch_5
    const-string v0, "SGILog24"

    return-object v0

    :pswitch_6
    const-string v0, "SGILog"

    return-object v0

    :pswitch_7
    const-string v0, "DCS"

    return-object v0

    :pswitch_8
    const-string v0, "Deflate"

    return-object v0

    :pswitch_9
    const-string v0, "PixarLog"

    return-object v0

    :pswitch_a
    const-string v0, "PixarFilm"

    return-object v0

    :pswitch_b
    const-string v0, "IT8BL"

    return-object v0

    :pswitch_c
    const-string v0, "IT8MP"

    return-object v0

    :pswitch_d
    const-string v0, "IT8LW"

    return-object v0

    :pswitch_e
    const-string v0, "IT8CTPAD"

    return-object v0

    :pswitch_f
    const-string v0, "PackBits"

    return-object v0

    :pswitch_10
    const-string v0, "Samsung SRW Compressed 2"

    return-object v0

    :pswitch_11
    const-string v0, "CCIRLEW"

    return-object v0

    :pswitch_12
    const-string v0, "Samsung SRW Compressed"

    return-object v0

    :pswitch_13
    const-string v0, "Packed RAW"

    return-object v0

    :pswitch_14
    const-string v0, "Sony ARW Compressed"

    return-object v0

    :pswitch_15
    const-string v0, "Next"

    return-object v0

    :pswitch_16
    const-string v0, "JBIG Color"

    return-object v0

    :pswitch_17
    const-string v0, "JBIG B&W"

    return-object v0

    :pswitch_18
    const-string v0, "Adobe Deflate"

    return-object v0

    :pswitch_19
    const-string v0, "JPEG"

    return-object v0

    :pswitch_1a
    const-string v0, "JPEG (old-style)"

    return-object v0

    :pswitch_1b
    const-string v0, "LZW"

    return-object v0

    :pswitch_1c
    const-string v0, "T6/Group 4 Fax"

    return-object v0

    :pswitch_1d
    const-string v0, "T4/Group 3 Fax"

    return-object v0

    :pswitch_1e
    const-string v0, "CCITT 1D"

    return-object v0

    :pswitch_1f
    const-string v0, "Uncompressed"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7ffe
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8001
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x807f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x808c
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x80b2
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x8774
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x8798
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x879e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_8
        0x106 -> :sswitch_7
        0x8029 -> :sswitch_6
        0x8063 -> :sswitch_5
        0x8765 -> :sswitch_4
        0x879b -> :sswitch_3
        0x884c -> :sswitch_2
        0xfde8 -> :sswitch_1
        0xffff -> :sswitch_0
    .end sparse-switch
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 553
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "None"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Soft"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Hard"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xa408

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomRenderedDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 627
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal process"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Custom process"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xa401

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

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

    packed-switch p1, :pswitch_data_8

    packed-switch p1, :pswitch_data_9

    packed-switch p1, :pswitch_data_a

    packed-switch p1, :pswitch_data_b

    packed-switch p1, :pswitch_data_c

    packed-switch p1, :pswitch_data_d

    sparse-switch p1, :sswitch_data_0

    .line 213
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 211
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getLensSpecificationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 203
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSubjectDistanceRangeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 163
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSensingMethodDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 181
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getUserCommentDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 175
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExifVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 205
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSensitivityTypeRangeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 179
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIsoEquivalentDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 157
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExposureProgramDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 131
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFNumberDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 127
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExposureTimeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 125
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getCfaPattern2Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 209
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getJpegProcDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getResolutionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getOrientationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 123
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFillOrderDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 201
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSharpnessDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 199
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSaturationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 197
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getContrastDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 195
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getGainControlDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 193
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSceneCaptureTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 191
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->get35mmFilmEquivFocalLengthDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 189
    :pswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getDigitalZoomRatioDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 187
    :pswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWhiteBalanceModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 185
    :pswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExposureModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 183
    :pswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getCustomRenderedDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 171
    :pswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getCfaPatternDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 169
    :pswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSceneTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 167
    :pswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFileSourceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 151
    :pswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalPlaneResolutionUnitDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 155
    :pswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalPlaneYResolutionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 153
    :pswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalPlaneXResolutionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 149
    :pswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExifImageHeightDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 147
    :pswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExifImageWidthDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 145
    :pswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getColorSpaceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 177
    :pswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFlashPixVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 113
    :pswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWindowsSubjectDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 111
    :pswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWindowsKeywordsDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :pswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWindowsAuthorDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 109
    :pswitch_17
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWindowsCommentDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 115
    :pswitch_18
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWindowsTitleDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 143
    :pswitch_19
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalLengthDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 141
    :pswitch_1a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFlashDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 139
    :pswitch_1b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :pswitch_1c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getMeteringModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 135
    :pswitch_1d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSubjectDistanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 161
    :pswitch_1e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getMaxApertureValueDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 165
    :pswitch_1f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getExposureBiasDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 159
    :pswitch_20
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getApertureValueDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 129
    :pswitch_21
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getShutterSpeedDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 133
    :pswitch_22
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getCompressedAverageBitsPerPixelDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 173
    :pswitch_23
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getComponentConfigurationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 105
    :pswitch_24
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getReferenceBlackWhiteDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 81
    :pswitch_25
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getYCbCrPositioningDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 103
    :pswitch_26
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getYCbCrSubsamplingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 101
    :pswitch_27
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getPlanarConfigurationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 85
    :pswitch_28
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getYResolutionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_29
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getXResolutionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :pswitch_2a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getStripByteCountsDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 95
    :pswitch_2b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getRowsPerStripDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :pswitch_2c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSamplesPerPixelDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 121
    :pswitch_2d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getThresholdingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :pswitch_2e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getPhotometricInterpretationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 207
    :pswitch_2f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getCompressionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 91
    :pswitch_30
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getBitsPerSampleDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 89
    :pswitch_31
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getImageHeightDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :pswitch_32
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getImageWidthDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    :pswitch_33
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getSubfileTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 117
    :pswitch_34
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getNewSubfileTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :pswitch_35
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getInteropVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :pswitch_36
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getInteropIndexDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfe
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x106
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x115
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x11a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x212
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x9101
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x9201
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x9204
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x9c9b
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0xa000
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0xa20e
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0xa300
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0xa401
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
        0x10a -> :sswitch_e
        0x112 -> :sswitch_d
        0x128 -> :sswitch_c
        0x200 -> :sswitch_b
        0x828e -> :sswitch_a
        0x829a -> :sswitch_9
        0x829d -> :sswitch_8
        0x8822 -> :sswitch_7
        0x8827 -> :sswitch_6
        0x8830 -> :sswitch_5
        0x9000 -> :sswitch_4
        0x9286 -> :sswitch_3
        0xa217 -> :sswitch_2
        0xa40c -> :sswitch_1
        0xa432 -> :sswitch_0
    .end sparse-switch
.end method

.method public getDigitalZoomRatioDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0xa404

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const-string v0, "Digital zoom not used"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.#"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getExifImageHeightDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 964
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0xa003

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 965
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " pixels"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getExifImageWidthDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 957
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0xa002

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 958
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " pixels"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getExifVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0x9000

    const/4 v1, 0x2

    .line 688
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureBiasDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x9204

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 879
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " EV"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 617
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Auto exposure"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Manual exposure"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Auto bracket"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xa402

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureProgramDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x8

    .line 905
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Manual control"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Program normal"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Aperture priority"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "Shutter priority"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "Program creative (slow program)"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "Program action (high-speed program)"

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "Portrait mode"

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "Landscape mode"

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const v1, 0x8822

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureTimeDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1166
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x829a

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1167
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFNumberDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1179
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x829d

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1182
    :cond_0
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSourceDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 865
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Film Scanner"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Reflection Print Scanner"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Digital Still Camera (DSC)"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const v1, 0xa300

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFillOrderDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 492
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Reversed"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x10a

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1002
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x9209

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1007
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const-string v2, "Flash fired"

    .line 1010
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, "Flash did not fire"

    .line 1012
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 1016
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const-string v2, ", return detected"

    .line 1017
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, ", return not detected"

    .line 1019
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    const-string v2, ", auto"

    .line 1023
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    const-string v0, ", red-eye reduction"

    .line 1026
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashPixVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0xa000

    const/4 v1, 0x2

    .line 694
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalLengthDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 984
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x920a

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 985
    :cond_0
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalLengthDescription(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFocalPlaneResolutionUnitDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 946
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "(No unit)"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Inches"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "cm"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const v1, 0xa210

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalPlaneXResolutionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0xa20e

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 925
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalPlaneResolutionUnitDescription()Ljava/lang/String;

    move-result-object v1

    .line 926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getReciprocal()Lcom/drew/lang/Rational;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalPlaneYResolutionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 933
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0xa20f

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 936
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFocalPlaneResolutionUnitDescription()Ljava/lang/String;

    move-result-object v1

    .line 937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getReciprocal()Lcom/drew/lang/Rational;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGainControlDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 563
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "None"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Low gain up"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Low gain down"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "High gain up"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "High gain down"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0xa407

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageHeightDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 451
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pixels"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getImageWidthDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 444
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pixels"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getInteropIndexDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "R98"

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Recommended Exif Interoperability Rules (ExifR98)"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getInteropVersionDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 220
    invoke-virtual {p0, v0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsoEquivalentDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x8827

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getJpegProcDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1224
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1227
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xe

    if-eq v1, v2, :cond_1

    .line 1231
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
    const-string v0, "Lossless"

    return-object v0

    :cond_2
    const-string v0, "Baseline"

    return-object v0
.end method

.method public getLensSpecificationDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0xa432

    .line 527
    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getLensSpecificationDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxApertureValueDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x9205

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getDoubleObject(I)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 888
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/drew/imaging/PhotographicConversions;->apertureToFStop(D)D

    move-result-wide v0

    .line 889
    invoke-static {v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeteringModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1071
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x9207

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1074
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 1084
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
    const-string v0, "Partial"

    return-object v0

    :pswitch_1
    const-string v0, "Multi-segment"

    return-object v0

    :pswitch_2
    const-string v0, "Multi-spot"

    return-object v0

    :pswitch_3
    const-string v0, "Spot"

    return-object v0

    :pswitch_4
    const-string v0, "Center weighted average"

    return-object v0

    :pswitch_5
    const-string v0, "Average"

    return-object v0

    :pswitch_6
    const-string v0, "Unknown"

    return-object v0

    :cond_1
    const-string v0, "(Other)"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNewSubfileTypeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x8

    .line 457
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Full-resolution image"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Reduced-resolution image"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Single page of multi-page image"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "Single page of multi-page reduced-resolution image"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "Transparency mask"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "Transparency mask of reduced-resolution image"

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "Transparency mask of multi-page image"

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "Transparency mask of reduced-resolution multi-page image"

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const/16 v1, 0xfe

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrientationDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x112

    .line 301
    invoke-super {p0, v0}, Lcom/drew/metadata/TagDescriptor;->getOrientationDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotometricInterpretationDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v1, 0x106

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 413
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x8023

    if-eq v0, v1, :cond_2

    const v1, 0x807c

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const-string v0, "Unknown colour space"

    return-object v0

    :pswitch_0
    const-string v0, "Pixar LogLuv"

    return-object v0

    :pswitch_1
    const-string v0, "Pixar LogL"

    return-object v0

    :pswitch_2
    const-string v0, "ITULab"

    return-object v0

    :pswitch_3
    const-string v0, "ICCLab"

    return-object v0

    :pswitch_4
    const-string v0, "CIELab"

    return-object v0

    :pswitch_5
    const-string v0, "YCbCr"

    return-object v0

    :pswitch_6
    const-string v0, "CMYK"

    return-object v0

    :pswitch_7
    const-string v0, "Transparency Mask"

    return-object v0

    :pswitch_8
    const-string v0, "RGB Palette"

    return-object v0

    :pswitch_9
    const-string v0, "RGB"

    return-object v0

    :pswitch_a
    const-string v0, "BlackIsZero"

    return-object v0

    :pswitch_b
    const-string v0, "WhiteIsZero"

    return-object v0

    :cond_1
    const-string v0, "Linear Raw"

    return-object v0

    :cond_2
    const-string v0, "Color Filter Array"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x804c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPlanarConfigurationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 378
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Chunky (contiguous for each subsampling pixel)"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Separate (Y-plane/Cb-plane/Cr-plane format)"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x11c

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceBlackWhiteDescription()Ljava/lang/String;
    .locals 14
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-eqz v0, :cond_0

    .line 242
    array-length v4, v0

    if-ge v4, v3, :cond_3

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 245
    instance-of v4, v0, [J

    if-eqz v4, :cond_4

    .line 247
    check-cast v0, [J

    .line 248
    array-length v4, v0

    if-ge v4, v3, :cond_1

    return-object v1

    .line 251
    :cond_1
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v4, 0x0

    .line 252
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 253
    aget-wide v5, v0, v4

    long-to-int v5, v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 259
    :cond_3
    aget v1, v0, v2

    const/4 v4, 0x1

    .line 260
    aget v5, v0, v4

    const/4 v6, 0x2

    .line 261
    aget v7, v0, v6

    const/4 v8, 0x3

    .line 262
    aget v9, v0, v8

    const/4 v10, 0x4

    .line 263
    aget v11, v0, v10

    const/4 v12, 0x5

    .line 264
    aget v0, v0, v12

    const-string v13, "[%d,%d,%d] [%d,%d,%d]"

    .line 265
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v12

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public getResolutionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 308
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "(No unit)"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Inch"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "cm"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/16 v1, 0x128

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowsPerStripDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v1, 0x116

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 396
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rows/strip"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSamplesPerPixelDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v1, 0x115

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 389
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " samples/pixel"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSaturationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 543
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "None"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Low saturation"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "High saturation"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xa409

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSceneCaptureTypeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 575
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Standard"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Landscape"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Portrait"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Night scene"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0xa406

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSceneTypeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    .line 700
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Directly photographed image"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0xa301

    invoke-virtual {p0, v2, v0, v1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSensingMethodDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x8

    .line 1191
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "(Not defined)"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "One-chip color area sensor"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Two-chip color area sensor"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "Three-chip color area sensor"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "Color sequential area sensor"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const/4 v3, 0x0

    aput-object v3, v0, v1

    const-string v1, "Trilinear sensor"

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "Color sequential linear sensor"

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const v1, 0xa217

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSensitivityTypeRangeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x8

    .line 512
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Standard Output Sensitivity"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Recommended Exposure Index"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ISO Speed"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Standard Output Sensitivity and Recommended Exposure Index"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Standard Output Sensitivity and ISO Speed"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Recommended Exposure Index and ISO Speed"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Standard Output Sensitivity, Recommended Exposure Index and ISO Speed"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const v1, 0x8830

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 533
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "None"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Low"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Hard"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xa40a

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShutterSpeedDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0x9201

    .line 1173
    invoke-super {p0, v0}, Lcom/drew/metadata/TagDescriptor;->getShutterSpeedDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStripByteCountsDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v1, 0x117

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 403
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSubfileTypeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 472
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Full-resolution image"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Reduced-resolution image"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Single page of multi-page image"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/16 v1, 0xff

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDistanceDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1144
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x9206

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1147
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.0##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " metres"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDistanceRangeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 501
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Macro"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Close view"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Distant view"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0xa40c

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThresholdingDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 482
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "No dithering or halftoning"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Ordered dither or halftone"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Randomized dither"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/16 v1, 0x107

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserCommentDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x9286

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 639
    :cond_0
    array-length v2, v0

    if-nez v2, :cond_1

    const-string v0, ""

    return-object v0

    .line 642
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "ASCII"

    const-string v4, "file.encoding"

    .line 643
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "UNICODE"

    const-string v4, "UTF-16LE"

    .line 644
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "JIS"

    const-string v4, "Shift-JIS"

    .line 645
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :try_start_0
    array-length v3, v0

    const/16 v4, 0xa

    if-lt v3, v4, :cond_5

    .line 649
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5, v4}, Ljava/lang/String;-><init>([BII)V

    .line 652
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 653
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 654
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 655
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 657
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v2, v4, :cond_4

    .line 658
    aget-byte v3, v0, v2

    if-eqz v3, :cond_3

    const/16 v6, 0x20

    if-eq v3, v6, :cond_3

    .line 660
    new-instance v3, Ljava/lang/String;

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-direct {v3, v0, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 662
    :cond_4
    new-instance v2, Ljava/lang/String;

    array-length v3, v0

    sub-int/2addr v3, v4

    invoke-direct {v2, v0, v4, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 667
    :cond_5
    new-instance v2, Ljava/lang/String;

    const-string v3, "file.encoding"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1035
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const v1, 0x9208

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1038
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 1062
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
    const-string v0, "Studio Tungsten"

    return-object v0

    :pswitch_1
    const-string v0, "D50"

    return-object v0

    :pswitch_2
    const-string v0, "D75"

    return-object v0

    :pswitch_3
    const-string v0, "D65"

    return-object v0

    :pswitch_4
    const-string v0, "D55"

    return-object v0

    :pswitch_5
    const-string v0, "Standard light (C)"

    return-object v0

    :pswitch_6
    const-string v0, "Standard light (B)"

    return-object v0

    :pswitch_7
    const-string v0, "Standard light"

    return-object v0

    :pswitch_8
    const-string v0, "Warm White Fluorescent"

    return-object v0

    :pswitch_9
    const-string v0, "White Fluorescent"

    return-object v0

    :pswitch_a
    const-string v0, "Cool White Fluorescent"

    return-object v0

    :pswitch_b
    const-string v0, "Day White Fluorescent"

    return-object v0

    :pswitch_c
    const-string v0, "Daylight Fluorescent"

    return-object v0

    :pswitch_d
    const-string v0, "Shade"

    return-object v0

    :pswitch_e
    const-string v0, "Cloudy"

    return-object v0

    :pswitch_f
    const-string v0, "Fine Weather"

    return-object v0

    :pswitch_10
    const-string v0, "Flash"

    return-object v0

    :pswitch_11
    const-string v0, "Tungsten"

    return-object v0

    :pswitch_12
    const-string v0, "Florescent"

    return-object v0

    :pswitch_13
    const-string v0, "Daylight"

    return-object v0

    :pswitch_14
    const-string v0, "Unknown"

    return-object v0

    :cond_1
    const-string v0, "(Other)"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
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
.end method

.method public getWhiteBalanceModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 608
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Auto white balance"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Manual white balance"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xa403

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsAuthorDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0x9c9d

    .line 329
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsCommentDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0x9c9c

    .line 335
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsKeywordsDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0x9c9e

    .line 341
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsSubjectDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0x9c9f

    .line 353
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsTitleDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0x9c9b

    .line 347
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXResolutionDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v1, 0x11a

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getResolutionDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s dots per %s"

    const/4 v3, 0x2

    .line 287
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    if-nez v1, :cond_1

    const-string/jumbo v0, "unit"

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYCbCrPositioningDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 295
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Center of pixel array"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Datum point"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x213

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYCbCrSubsamplingDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v1, 0x212

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_3

    .line 360
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 362
    aget v3, v0, v1

    const/4 v4, 0x1

    if-ne v3, v2, :cond_1

    aget v3, v0, v4

    if-ne v3, v4, :cond_1

    const-string v0, "YCbCr4:2:2"

    return-object v0

    .line 364
    :cond_1
    aget v1, v0, v1

    if-ne v1, v2, :cond_2

    aget v0, v0, v4

    if-ne v0, v2, :cond_2

    const-string v0, "YCbCr4:2:0"

    return-object v0

    :cond_2
    const-string v0, "(Unknown)"

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getYResolutionDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptorBase;->_directory:Lcom/drew/metadata/Directory;

    const/16 v1, 0x11b

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getResolutionDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s dots per %s"

    const/4 v3, 0x2

    .line 275
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    if-nez v1, :cond_1

    const-string/jumbo v0, "unit"

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
