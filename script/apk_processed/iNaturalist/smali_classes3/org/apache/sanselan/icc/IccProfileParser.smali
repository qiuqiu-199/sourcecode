.class public Lorg/apache/sanselan/icc/IccProfileParser;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "IccProfileParser.java"

# interfaces
.implements Lorg/apache/sanselan/icc/IccConstants;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    const/16 v0, 0x4d

    .line 35
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->setByteOrder(I)V

    return-void
.end method

.method private getIccTagType(I)Lorg/apache/sanselan/icc/IccTagType;
    .locals 2

    const/4 v0, 0x0

    .line 300
    :goto_0
    sget-object v1, Lorg/apache/sanselan/icc/IccProfileParser;->TagTypes:[Lorg/apache/sanselan/icc/IccTagType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 301
    sget-object v1, Lorg/apache/sanselan/icc/IccProfileParser;->TagTypes:[Lorg/apache/sanselan/icc/IccTagType;

    aget-object v1, v1, v0

    iget v1, v1, Lorg/apache/sanselan/icc/IccTagType;->signature:I

    if-ne v1, p1, :cond_0

    .line 302
    sget-object p1, Lorg/apache/sanselan/icc/IccProfileParser;->TagTypes:[Lorg/apache/sanselan/icc/IccTagType;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private readICCProfileInfo(Ljava/io/InputStream;)Lorg/apache/sanselan/icc/IccProfileInfo;
    .locals 27

    move-object/from16 v1, p0

    .line 122
    new-instance v0, Lorg/apache/sanselan/util/CachingInputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lorg/apache/sanselan/util/CachingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 125
    iget-boolean v2, v1, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v2, :cond_0

    .line 126
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    :cond_0
    :try_start_0
    const-string v2, "ProfileSize"

    const-string v3, "Not a Valid ICC Profile"

    .line 135
    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v6

    const-string v2, "Signature"

    const-string v3, "Not a Valid ICC Profile"

    .line 148
    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v7

    .line 150
    iget-boolean v2, v1, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v2, :cond_1

    const-string v2, "CMMTypeSignature"

    .line 151
    invoke-virtual {v1, v2, v7}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_1
    const-string v2, "ProfileVersion"

    const-string v3, "Not a Valid ICC Profile"

    .line 153
    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v8

    const-string v2, "ProfileDeviceClassSignature"

    const-string v3, "Not a Valid ICC Profile"

    .line 156
    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v9

    .line 159
    iget-boolean v2, v1, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v2, :cond_2

    const-string v2, "ProfileDeviceClassSignature"

    .line 160
    invoke-virtual {v1, v2, v9}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_2
    const-string v2, "ColorSpace"

    const-string v3, "Not a Valid ICC Profile"

    .line 163
    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v10

    .line 165
    iget-boolean v2, v1, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v2, :cond_3

    const-string v2, "ColorSpace"

    .line 166
    invoke-virtual {v1, v2, v10}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_3
    const-string v2, "ProfileConnectionSpace"

    const-string v3, "Not a Valid ICC Profile"

    .line 168
    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v11

    .line 170
    iget-boolean v2, v1, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v2, :cond_4

    const-string v2, "ProfileConnectionSpace"

    .line 171
    invoke-virtual {v1, v2, v11}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_4
    const-string v2, "Not a Valid ICC Profile"

    const/16 v3, 0xc

    .line 173
    invoke-virtual {v1, v0, v3, v2}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    const-string v2, "ProfileFileSignature"

    const-string v4, "Not a Valid ICC Profile"

    .line 175
    invoke-virtual {v1, v2, v0, v4}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v12

    .line 177
    iget-boolean v2, v1, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v2, :cond_5

    const-string v2, "ProfileFileSignature"

    .line 178
    invoke-virtual {v1, v2, v12}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_5
    const-string v2, "PrimaryPlatformSignature"

    const-string v4, "Not a Valid ICC Profile"

    .line 180
    invoke-virtual {v1, v2, v0, v4}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v13

    .line 182
    iget-boolean v2, v1, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v2, :cond_6

    const-string v2, "PrimaryPlatformSignature"

    .line 183
    invoke-virtual {v1, v2, v13}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_6
    const-string v2, "ProfileFileSignature"

    const-string v4, "Not a Valid ICC Profile"

    .line 186
    invoke-virtual {v1, v2, v0, v4}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v14

    .line 188
    iget-boolean v2, v1, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v2, :cond_7

    const-string v2, "ProfileFileSignature"

    .line 189
    invoke-virtual {v1, v2, v12}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_7
    const-string v2, "ProfileFileSignature"

    const-string v4, "Not a Valid ICC Profile"

    .line 191
    invoke-virtual {v1, v2, v0, v4}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v15

    .line 193
    iget-boolean v2, v1, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v2, :cond_8

    const-string v2, "DeviceManufacturer"

    .line 194
    invoke-virtual {v1, v2, v15}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_8
    const-string v2, "DeviceModel"

    const-string v4, "Not a Valid ICC Profile"

    .line 196
    invoke-virtual {v1, v2, v0, v4}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 198
    iget-boolean v4, v1, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v4, :cond_9

    const-string v4, "DeviceModel"

    .line 199
    invoke-virtual {v1, v4, v2}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_9
    const/16 v4, 0x8

    const-string v5, "Not a Valid ICC Profile"

    .line 201
    invoke-virtual {v1, v0, v4, v5}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    const-string v4, "RenderingIntent"

    const-string v5, "Not a Valid ICC Profile"

    .line 203
    invoke-virtual {v1, v4, v0, v5}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v5

    .line 205
    iget-boolean v4, v1, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v4, :cond_a

    const-string v4, "RenderingIntent"

    .line 206
    invoke-virtual {v1, v4, v5}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_a
    const-string v4, "Not a Valid ICC Profile"

    .line 208
    invoke-virtual {v1, v0, v3, v4}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    const-string v3, "ProfileCreatorSignature"

    const-string v4, "Not a Valid ICC Profile"

    .line 210
    invoke-virtual {v1, v3, v0, v4}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v3

    .line 212
    iget-boolean v4, v1, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v4, :cond_b

    const-string v4, "ProfileCreatorSignature"

    .line 213
    invoke-virtual {v1, v4, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_b
    const/16 v19, 0x0

    const/16 v4, 0x10

    move/from16 v21, v5

    const-string v5, "Not a Valid ICC Profile"

    .line 217
    invoke-virtual {v1, v0, v4, v5}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    const/16 v4, 0x1c

    const-string v5, "Not a Valid ICC Profile"

    .line 224
    invoke-virtual {v1, v0, v4, v5}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    const-string v4, "TagCount"

    const-string v5, "Not a Valid ICC Profile"

    .line 228
    invoke-virtual {v1, v4, v0, v5}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v4

    .line 231
    new-array v5, v4, [Lorg/apache/sanselan/icc/IccTag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v16, 0x0

    move/from16 v22, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_c

    move/from16 v23, v4

    .line 235
    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v24, v2

    const-string v2, "TagSignature["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Not a Valid ICC Profile"

    invoke-virtual {v1, v2, v0, v4}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 241
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v25, v15

    const-string v15, "OffsetToData["

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v15, "]"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "Not a Valid ICC Profile"

    invoke-virtual {v1, v4, v0, v15}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v4

    .line 243
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v26, v14

    const-string v14, "ElementSize["

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v14, "]"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Not a Valid ICC Profile"

    invoke-virtual {v1, v14, v0, v15}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v14

    .line 246
    invoke-direct {v1, v2}, Lorg/apache/sanselan/icc/IccProfileParser;->getIccTagType(I)Lorg/apache/sanselan/icc/IccTagType;

    move-result-object v15

    .line 259
    new-instance v1, Lorg/apache/sanselan/icc/IccTag;

    invoke-direct {v1, v2, v4, v14, v15}, Lorg/apache/sanselan/icc/IccTag;-><init>(IIILorg/apache/sanselan/icc/IccTagType;)V

    .line 262
    aput-object v1, v5, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v23

    move/from16 v2, v24

    move/from16 v15, v25

    move/from16 v14, v26

    move-object/from16 v1, p0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_2

    :cond_c
    move/from16 v24, v2

    move/from16 v26, v14

    move/from16 v25, v15

    .line 268
    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_d

    goto :goto_1

    .line 272
    :cond_d
    invoke-virtual {v0}, Lorg/apache/sanselan/util/CachingInputStream;->getCache()[B

    move-result-object v0

    .line 274
    array-length v1, v0

    if-lt v1, v6, :cond_f

    .line 277
    new-instance v1, Lorg/apache/sanselan/icc/IccProfileInfo;

    move-object v4, v1

    move-object v3, v5

    move/from16 v2, v21

    move-object v5, v0

    move/from16 v14, v26

    move/from16 v15, v25

    move/from16 v16, v24

    move/from16 v17, v2

    move/from16 v18, v22

    move-object/from16 v20, v3

    invoke-direct/range {v4 .. v20}, Lorg/apache/sanselan/icc/IccProfileInfo;-><init>([BIIIIIIIIIIIII[B[Lorg/apache/sanselan/icc/IccTag;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v2, p0

    .line 285
    :try_start_2
    iget-boolean v0, v2, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v0, :cond_e

    .line 286
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "issRGB: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lorg/apache/sanselan/icc/IccProfileInfo;->issRGB()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    :cond_e
    return-object v1

    :cond_f
    move-object/from16 v2, p0

    .line 275
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t read ICC Profile."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v1

    .line 292
    :goto_2
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getICCProfileInfo(Ljava/awt/color/ICC_Profile;)Lorg/apache/sanselan/icc/IccProfileInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 43
    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->getICCProfileInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/icc/IccProfileInfo;

    move-result-object p1

    return-object p1
.end method

.method public getICCProfileInfo(Ljava/io/File;)Lorg/apache/sanselan/icc/IccProfileInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->getICCProfileInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/icc/IccProfileInfo;

    move-result-object p1

    return-object p1
.end method

.method public getICCProfileInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/icc/IccProfileInfo;
    .locals 6

    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    invoke-direct {p0, v1}, Lorg/apache/sanselan/icc/IccProfileParser;->readICCProfileInfo(Ljava/io/InputStream;)Lorg/apache/sanselan/icc/IccProfileInfo;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 105
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 109
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    .line 83
    :goto_1
    :try_start_4
    iget-object v3, v2, Lorg/apache/sanselan/icc/IccProfileInfo;->tags:[Lorg/apache/sanselan/icc/IccTag;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 85
    iget-object v3, v2, Lorg/apache/sanselan/icc/IccProfileInfo;->tags:[Lorg/apache/sanselan/icc/IccTag;

    aget-object v3, v3, v1

    .line 86
    iget v4, v3, Lorg/apache/sanselan/icc/IccTag;->offset:I

    iget v5, v3, Lorg/apache/sanselan/icc/IccTag;->length:I

    invoke-virtual {p1, v4, v5}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getBlock(II)[B

    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Lorg/apache/sanselan/icc/IccTag;->setData([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 98
    :goto_2
    :try_start_5
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_3

    .line 105
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 109
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 114
    :cond_3
    :goto_3
    iget-boolean p1, p0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz p1, :cond_4

    .line 115
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    :cond_4
    return-object v0

    :goto_4
    if-eqz v0, :cond_5

    .line 105
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 109
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 110
    :cond_5
    :goto_5
    throw p1
.end method

.method public getICCProfileInfo([B)Lorg/apache/sanselan/icc/IccProfileInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->getICCProfileInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/icc/IccProfileInfo;

    move-result-object p1

    return-object p1
.end method

.method public issRGB(Ljava/awt/color/ICC_Profile;)Ljava/lang/Boolean;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 312
    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->issRGB(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public issRGB(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 328
    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->issRGB(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public issRGB(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/Boolean;
    .locals 3

    .line 335
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    .line 345
    :cond_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const-string v0, "ProfileSize"

    const-string v1, "Not a Valid ICC Profile"

    .line 347
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    const/16 v0, 0x14

    .line 353
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;I)V

    const-string v0, "Not a Valid ICC Profile"

    const/16 v1, 0xc

    .line 355
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 357
    invoke-virtual {p0, p1, v1}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;I)V

    const-string v0, "ProfileFileSignature"

    const-string v1, "Not a Valid ICC Profile"

    .line 359
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    .line 361
    iget-boolean v1, p0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v1, :cond_1

    const-string v1, "DeviceManufacturer"

    .line 362
    invoke-virtual {p0, v1, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_1
    const-string v1, "DeviceModel"

    const-string v2, "Not a Valid ICC Profile"

    .line 364
    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p1

    .line 366
    iget-boolean v1, p0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v1, :cond_2

    const-string v1, "DeviceModel"

    .line 367
    invoke-virtual {p0, v1, p1}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    :cond_2
    const v1, 0x49454320    # 807986.0f

    if-ne v0, v1, :cond_3

    const v0, 0x73524742

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 371
    :goto_0
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 375
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public issRGB([B)Ljava/lang/Boolean;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 320
    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->issRGB(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
