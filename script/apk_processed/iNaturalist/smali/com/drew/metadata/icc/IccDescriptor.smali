.class public Lcom/drew/metadata/icc/IccDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "IccDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/icc/IccDirectory;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICC_TAG_TYPE_CURV:I = 0x63757276

.field private static final ICC_TAG_TYPE_DESC:I = 0x64657363

.field private static final ICC_TAG_TYPE_MEAS:I = 0x6d656173

.field private static final ICC_TAG_TYPE_MLUC:I = 0x6d6c7563

.field private static final ICC_TAG_TYPE_SIG:I = 0x73696720

.field private static final ICC_TAG_TYPE_TEXT:I = 0x74657874

.field private static final ICC_TAG_TYPE_XYZ_ARRAY:I = 0x58595a20


# direct methods
.method public constructor <init>(Lcom/drew/metadata/icc/IccDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/icc/IccDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method public static formatDoubleAsString(DIZ)Ljava/lang/String;
    .locals 12
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    double-to-long v1, p0

    .line 232
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 233
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    long-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    int-to-double v7, p2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-long v3, v3

    const-string v5, ""

    move-object v7, v5

    move-wide v5, v3

    :goto_0
    if-lez p2, :cond_3

    const-wide/16 v8, 0xa

    .line 238
    rem-long v10, v5, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    long-to-int v10, v10

    int-to-byte v10, v10

    .line 239
    div-long/2addr v5, v8

    .line 240
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_1

    if-nez p3, :cond_1

    if-nez v10, :cond_1

    if-ne p2, v0, :cond_2

    .line 241
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    add-long/2addr v1, v5

    const-wide/16 p2, 0x0

    cmpg-double v5, p0, p2

    if-gez v5, :cond_4

    const-wide/16 p0, 0x0

    cmp-long p2, v1, p0

    if-nez p2, :cond_5

    cmp-long p2, v3, p0

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 245
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_6

    const-string p1, "-"

    goto :goto_2

    :cond_6
    const-string p1, ""

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getInt32FromString(Ljava/lang/String;)I
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 340
    new-instance v0, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v0, p0}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/drew/lang/ByteArrayReader;->getInt32(I)I

    move-result p0

    return p0
.end method

.method private getPlatformDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/drew/metadata/icc/IccDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/icc/IccDirectory;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/drew/metadata/icc/IccDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/drew/metadata/icc/IccDescriptor;->getInt32FromString(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v1, :sswitch_data_0

    const-string v1, "Unknown (%s)"

    const/4 v2, 0x1

    .line 284
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "Taligent, Inc."

    return-object v0

    :sswitch_1
    const-string v0, "Sun Microsystems, Inc."

    return-object v0

    :sswitch_2
    const-string v0, "Silicon Graphics, Inc."

    return-object v0

    :sswitch_3
    const-string v0, "Microsoft Corporation"

    return-object v0

    :sswitch_4
    const-string v0, "Apple Computer, Inc."

    return-object v0

    :catch_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4150504c -> :sswitch_4
        0x4d534654 -> :sswitch_3
        0x53474920 -> :sswitch_2
        0x53554e57 -> :sswitch_1
        0x54474e54 -> :sswitch_0
    .end sparse-switch
.end method

.method private getProfileClassDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/drew/metadata/icc/IccDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/icc/IccDirectory;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/drew/metadata/icc/IccDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/drew/metadata/icc/IccDescriptor;->getInt32FromString(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v1, :sswitch_data_0

    const-string v1, "Unknown (%s)"

    const/4 v2, 0x1

    .line 318
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "ColorSpace Conversion"

    return-object v0

    :sswitch_1
    const-string v0, "Input Device"

    return-object v0

    :sswitch_2
    const-string v0, "Output Device"

    return-object v0

    :sswitch_3
    const-string v0, "Named Color"

    return-object v0

    :sswitch_4
    const-string v0, "Display Device"

    return-object v0

    :sswitch_5
    const-string v0, "DeviceLink"

    return-object v0

    :sswitch_6
    const-string v0, "Abstract"

    return-object v0

    :catch_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x61627374 -> :sswitch_6
        0x6c696e6b -> :sswitch_5
        0x6d6e7472 -> :sswitch_4
        0x6e6d636c -> :sswitch_3
        0x70727472 -> :sswitch_2
        0x73636e72 -> :sswitch_1
        0x73706163 -> :sswitch_0
    .end sparse-switch
.end method

.method private getProfileVersionDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/drew/metadata/icc/IccDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/icc/IccDirectory;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/drew/metadata/icc/IccDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 330
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x18

    .line 331
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0xf00000

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x14

    .line 332
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v3, 0xf0000

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x10

    const-string v3, "%d.%d.%d"

    const/4 v4, 0x3

    .line 334
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

.method private getRenderingIntentDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 251
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Perceptual"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Media-Relative Colorimetric"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Saturation"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ICC-Absolute Colorimetric"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x40

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/icc/IccDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTagDataString(I)Ljava/lang/String;
    .locals 14
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/drew/metadata/icc/IccDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/icc/IccDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/icc/IccDirectory;->getByteArray(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/drew/metadata/icc/IccDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/icc/IccDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/icc/IccDirectory;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    new-instance p1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {p1, v0}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v2

    const/4 v3, 0x7

    const/16 v4, 0x10

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xc

    const/4 v8, 0x1

    const/16 v9, 0x8

    sparse-switch v2, :sswitch_data_0

    const-string p1, "%s (0x%08X): %d bytes"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_a

    .line 88
    :sswitch_0
    :try_start_1
    new-instance p1, Ljava/lang/String;

    array-length v1, v0

    sub-int/2addr v1, v9

    sub-int/2addr v1, v8

    const-string v2, "ASCII"

    invoke-direct {p1, v0, v9, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    .line 90
    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/String;

    array-length v1, v0

    sub-int/2addr v1, v9

    sub-int/2addr v1, v8

    invoke-direct {p1, v0, v9, v1}, Ljava/lang/String;-><init>([BII)V

    return-object p1

    .line 96
    :sswitch_1
    invoke-virtual {p1, v9}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result p1

    invoke-static {p1}, Lcom/drew/metadata/icc/IccReader;->getStringFromInt32(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 185
    :sswitch_2
    invoke-virtual {p1, v9}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v2

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v1, v2, :cond_1

    mul-int/lit8 v5, v1, 0xc

    add-int/2addr v5, v4

    .line 191
    invoke-virtual {p1, v5}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v6

    invoke-static {v6}, Lcom/drew/metadata/icc/IccReader;->getStringFromInt32(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v5, 0x4

    .line 192
    invoke-virtual {p1, v7}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v7

    add-int/lit8 v5, v5, 0x8

    .line 193
    invoke-virtual {p1, v5}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 196
    :try_start_3
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-16BE"

    invoke-direct {v8, v0, v5, v7, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 198
    :catch_1
    :try_start_4
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0, v5, v7}, Ljava/lang/String;-><init>([BII)V

    :goto_1
    const-string v5, " "

    .line 200
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 98
    :sswitch_3
    invoke-virtual {p1, v9}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v0

    .line 99
    invoke-virtual {p1, v7}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v2

    .line 100
    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v4

    const/16 v7, 0x14

    .line 101
    invoke-virtual {p1, v7}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v7

    const/16 v9, 0x18

    .line 102
    invoke-virtual {p1, v9}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v9

    const/16 v10, 0x1c

    .line 103
    invoke-virtual {p1, v10}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v10

    const/16 v11, 0x20

    .line 104
    invoke-virtual {p1, v11}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result p1

    packed-switch v0, :pswitch_data_0

    const-string v11, "Unknown %d"

    goto :goto_2

    :pswitch_0
    const-string v11, "1964 10\u00b0"

    goto :goto_3

    :pswitch_1
    const-string v11, "1931 2\u00b0"

    goto :goto_3

    :pswitch_2
    const-string v11, "Unknown"

    goto :goto_3

    .line 117
    :goto_2
    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v1

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_3
    packed-switch v9, :pswitch_data_1

    const-string v9, "Unknown %d"

    goto :goto_4

    :pswitch_3
    const-string v0, "0/d or d/0"

    goto :goto_5

    :pswitch_4
    const-string v0, "0/45 or 45/0"

    goto :goto_5

    :pswitch_5
    const-string v0, "Unknown"

    goto :goto_5

    .line 131
    :goto_4
    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v1

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    packed-switch p1, :pswitch_data_2

    const-string v9, "Unknown %d"

    goto :goto_6

    :pswitch_6
    const-string p1, "F8"

    goto :goto_7

    :pswitch_7
    const-string p1, "Equi-Power (E)"

    goto :goto_7

    :pswitch_8
    const-string p1, "A"

    goto :goto_7

    :pswitch_9
    const-string p1, "D55"

    goto :goto_7

    :pswitch_a
    const-string p1, "F2"

    goto :goto_7

    :pswitch_b
    const-string p1, "D93"

    goto :goto_7

    :pswitch_c
    const-string p1, "D65"

    goto :goto_7

    :pswitch_d
    const-string p1, "D50"

    goto :goto_7

    :pswitch_e
    const-string/jumbo p1, "unknown"

    goto :goto_7

    .line 163
    :goto_6
    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v12, v1

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 166
    :goto_7
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v12, "0.###"

    invoke-direct {v9, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v12, "%s Observer, Backing (%s, %s, %s), Geometry %s, Flare %d%%, Illuminant %s"

    .line 167
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v11, v3, v1

    float-to-double v1, v2

    invoke-virtual {v9, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    float-to-double v1, v4

    invoke-virtual {v9, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    float-to-double v1, v7

    invoke-virtual {v9, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v1, 0x4

    aput-object v0, v3, v1

    const/4 v0, 0x5

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v10, v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x6

    aput-object p1, v3, v0

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :sswitch_4
    invoke-virtual {p1, v9}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result p1

    .line 94
    new-instance v1, Ljava/lang/String;

    sub-int/2addr p1, v8

    invoke-direct {v1, v0, v7, p1}, Ljava/lang/String;-><init>([BII)V

    return-object v1

    .line 206
    :sswitch_5
    invoke-virtual {p1, v9}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v0, :cond_3

    if-eqz v4, :cond_2

    const-string v5, ", "

    .line 210
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v7

    .line 211
    invoke-virtual {p1, v5}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    int-to-float v5, v5

    float-to-double v5, v5

    const-wide v8, 0x40efffe000000000L    # 65535.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v8

    :try_start_5
    invoke-static {v5, v6, v3, v1}, Lcom/drew/metadata/icc/IccDescriptor;->formatDoubleAsString(DIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 214
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 171
    :sswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0.####"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 173
    array-length v0, v0

    sub-int/2addr v0, v9

    div-int/2addr v0, v7

    :goto_9
    if-ge v1, v0, :cond_5

    mul-int/lit8 v4, v1, 0xc

    add-int/2addr v4, v9

    .line 175
    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v5

    add-int/lit8 v6, v4, 0x4

    .line 176
    invoke-virtual {p1, v6}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v6

    add-int/lit8 v4, v4, 0x8

    .line 177
    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v4

    if-lez v1, :cond_4

    const-string v7, ", "

    .line 179
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v7, "("

    .line 180
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-double v7, v5

    invoke-virtual {v3, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-double v5, v6

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 182
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 217
    :goto_a
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/drew/metadata/icc/IccReader;->getStringFromInt32(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    return-object p1

    :catch_2
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x58595a20 -> :sswitch_6
        0x63757276 -> :sswitch_5
        0x64657363 -> :sswitch_4
        0x6d656173 -> :sswitch_3
        0x6d6c7563 -> :sswitch_2
        0x73696720 -> :sswitch_1
        0x74657874 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const v0, 0x20202020

    if-le p1, v0, :cond_0

    const v0, 0x7a7a7a7a

    if-ge p1, v0, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/drew/metadata/icc/IccDescriptor;->getTagDataString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :cond_1
    invoke-direct {p0}, Lcom/drew/metadata/icc/IccDescriptor;->getRenderingIntentDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 57
    :cond_2
    invoke-direct {p0}, Lcom/drew/metadata/icc/IccDescriptor;->getPlatformDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :cond_3
    invoke-direct {p0}, Lcom/drew/metadata/icc/IccDescriptor;->getProfileClassDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :cond_4
    invoke-direct {p0}, Lcom/drew/metadata/icc/IccDescriptor;->getProfileVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
