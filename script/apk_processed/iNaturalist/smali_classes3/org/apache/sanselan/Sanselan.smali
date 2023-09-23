.class public abstract Lorg/apache/sanselan/Sanselan;
.super Ljava/lang/Object;
.source "Sanselan.java"

# interfaces
.implements Lorg/apache/sanselan/SanselanConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpImageFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1008
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1013
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 1015
    invoke-virtual {v0, p0}, Lorg/apache/sanselan/ImageParser;->dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpImageFile([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 993
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAllBufferedImages(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1082
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getAllBufferedImages(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1087
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 1089
    invoke-virtual {v0, p0}, Lorg/apache/sanselan/ImageParser;->getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getAllBufferedImages([B)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1066
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getBufferedImage(Ljava/io/File;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1231
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/apache/sanselan/Sanselan;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static getBufferedImage(Ljava/io/File;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1255
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static getBufferedImage(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1136
    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "FILENAME"

    .line 1161
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FILENAME"

    .line 1162
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1163
    :goto_0
    new-instance v1, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v1, p0, v0}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lorg/apache/sanselan/Sanselan;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method private static getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1260
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1262
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1264
    :cond_0
    invoke-virtual {v0, p0, p1}, Lorg/apache/sanselan/ImageParser;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static getBufferedImage([B)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1185
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/apache/sanselan/Sanselan;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static getBufferedImage([BLjava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1209
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatCompliance(Ljava/io/File;)Lorg/apache/sanselan/FormatCompliance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1025
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;

    move-result-object p0

    return-object p0
.end method

.method private static getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1030
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 1032
    invoke-virtual {v0, p0}, Lorg/apache/sanselan/ImageParser;->getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatCompliance([B)Lorg/apache/sanselan/FormatCompliance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1020
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfile(Ljava/io/File;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 295
    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getICCProfile(Ljava/io/File;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfile(Ljava/io/File;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getICCProfile(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 261
    invoke-static {p0, p1, v0}, Lorg/apache/sanselan/Sanselan;->getICCProfile(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfile(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/sanselan/Sanselan;->getICCProfile(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method protected static getICCProfile(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-static {p0, p1}, Lorg/apache/sanselan/Sanselan;->getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 321
    :cond_0
    new-instance v0, Lorg/apache/sanselan/icc/IccProfileParser;

    invoke-direct {v0}, Lorg/apache/sanselan/icc/IccProfileParser;-><init>()V

    .line 322
    invoke-virtual {v0, p0}, Lorg/apache/sanselan/icc/IccProfileParser;->getICCProfileInfo([B)Lorg/apache/sanselan/icc/IccProfileInfo;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lorg/apache/sanselan/icc/IccProfileInfo;->issRGB()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 326
    :cond_1
    invoke-static {p0}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfile([B)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 227
    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getICCProfile([BLjava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfile([BLjava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getICCProfile(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfileBytes(Ljava/io/File;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 386
    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 414
    invoke-virtual {v0, p0, p1}, Lorg/apache/sanselan/ImageParser;->getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfileBytes([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 346
    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getICCProfileBytes([BLjava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getICCProfileBytes([BLjava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Ljava/io/File;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 582
    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Ljava/lang/String;[B)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>(Ljava/lang/String;[B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Ljava/lang/String;[BLjava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>(Ljava/lang/String;[B)V

    invoke-static {v0, p2}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 589
    invoke-virtual {v0, p0, p1}, Lorg/apache/sanselan/ImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo([B)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo([BLjava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static final getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->guessFormat(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageFormat;

    move-result-object v0

    .line 597
    sget-object v1, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_UNKNOWN:Lorg/apache/sanselan/ImageFormat;

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/ImageFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 599
    invoke-static {}, Lorg/apache/sanselan/ImageParser;->getAllImageParsers()[Lorg/apache/sanselan/ImageParser;

    move-result-object v1

    const/4 v3, 0x0

    .line 601
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 602
    aget-object v4, v1, v3

    .line 604
    invoke-virtual {v4, v0}, Lorg/apache/sanselan/ImageParser;->canAcceptType(Lorg/apache/sanselan/ImageFormat;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 609
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getFilename()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 611
    invoke-static {}, Lorg/apache/sanselan/ImageParser;->getAllImageParsers()[Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 613
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_3

    .line 614
    aget-object v1, v0, v2

    .line 616
    invoke-virtual {v1, p0}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 621
    :cond_3
    new-instance p0, Lorg/apache/sanselan/ImageReadException;

    const-string v0, "Can\'t parse this format."

    invoke-direct {p0, v0}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageSize(Ljava/io/File;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 695
    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getImageSize(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 637
    invoke-static {p0, p1, v0}, Lorg/apache/sanselan/Sanselan;->getImageSize(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getImageSize(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/sanselan/Sanselan;->getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 715
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 717
    invoke-virtual {v0, p0, p1}, Lorg/apache/sanselan/ImageParser;->getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getImageSize([B)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 667
    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 682
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public static getMetadata(Ljava/io/File;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 946
    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 971
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static getMetadata(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 896
    invoke-static {p0, p1, v0}, Lorg/apache/sanselan/Sanselan;->getMetadata(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static getMetadata(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 923
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/sanselan/Sanselan;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method private static getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 976
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 978
    invoke-virtual {v0, p0, p1}, Lorg/apache/sanselan/ImageParser;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static getMetadata([B)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 846
    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getMetadata([BLjava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static getMetadata([BLjava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 791
    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getXmpXml(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 733
    invoke-static {p0, p1, v0}, Lorg/apache/sanselan/Sanselan;->getXmpXml(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/sanselan/Sanselan;->getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 821
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 823
    invoke-virtual {v0, p0, p1}, Lorg/apache/sanselan/ImageParser;->getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 763
    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getXmpXml([BLjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpXml([BLjava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 778
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static guessFormat(Ljava/io/File;)Lorg/apache/sanselan/ImageFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->guessFormat(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageFormat;

    move-result-object p0

    return-object p0
.end method

.method public static guessFormat(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageFormat;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 145
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v0, :cond_1e

    if-ltz v1, :cond_1e

    const/16 v2, 0xff

    and-int/2addr v0, v2

    and-int/2addr v1, v2

    const/16 v3, 0x47

    const/16 v4, 0x49

    if-ne v0, v3, :cond_1

    if-ne v1, v4, :cond_1

    .line 154
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_GIF:Lorg/apache/sanselan/ImageFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 205
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v3, 0x89

    const/16 v5, 0x50

    if-ne v0, v3, :cond_3

    if-ne v1, v5, :cond_3

    .line 161
    :try_start_3
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PNG:Lorg/apache/sanselan/ImageFormat;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_2

    .line 205
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    if-ne v0, v2, :cond_5

    const/16 v3, 0xd8

    if-ne v1, v3, :cond_5

    .line 163
    :try_start_5
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_JPEG:Lorg/apache/sanselan/ImageFormat;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p0, :cond_4

    .line 205
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    const/16 v3, 0x4d

    const/16 v6, 0x42

    if-ne v0, v6, :cond_7

    if-ne v1, v3, :cond_7

    .line 165
    :try_start_7
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_BMP:Lorg/apache/sanselan/ImageFormat;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz p0, :cond_6

    .line 205
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-object v0

    :cond_7
    if-ne v0, v3, :cond_9

    if-ne v1, v3, :cond_9

    .line 168
    :try_start_9
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_TIFF:Lorg/apache/sanselan/ImageFormat;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz p0, :cond_8

    .line 205
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    return-object v0

    :cond_9
    if-ne v0, v4, :cond_b

    if-ne v1, v4, :cond_b

    .line 171
    :try_start_b
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_TIFF:Lorg/apache/sanselan/ImageFormat;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz p0, :cond_a

    .line 205
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    return-object v0

    :cond_b
    const/16 v3, 0x38

    if-ne v0, v3, :cond_d

    if-ne v1, v6, :cond_d

    .line 173
    :try_start_d
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PSD:Lorg/apache/sanselan/ImageFormat;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz p0, :cond_c

    .line 205
    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_6

    :catch_6
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_c
    :goto_6
    return-object v0

    :cond_d
    if-ne v0, v5, :cond_f

    const/16 v3, 0x31

    if-ne v1, v3, :cond_f

    .line 175
    :try_start_f
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PBM:Lorg/apache/sanselan/ImageFormat;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz p0, :cond_e

    .line 205
    :try_start_10
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_7

    :catch_7
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_e
    :goto_7
    return-object v0

    :cond_f
    if-ne v0, v5, :cond_11

    const/16 v3, 0x34

    if-ne v1, v3, :cond_11

    .line 177
    :try_start_11
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PBM:Lorg/apache/sanselan/ImageFormat;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz p0, :cond_10

    .line 205
    :try_start_12
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_8

    :catch_8
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_10
    :goto_8
    return-object v0

    :cond_11
    const/16 v3, 0x32

    if-ne v0, v5, :cond_13

    if-ne v1, v3, :cond_13

    .line 179
    :try_start_13
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PGM:Lorg/apache/sanselan/ImageFormat;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz p0, :cond_12

    .line 205
    :try_start_14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_9

    :catch_9
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_12
    :goto_9
    return-object v0

    :cond_13
    if-ne v0, v5, :cond_15

    const/16 v4, 0x35

    if-ne v1, v4, :cond_15

    .line 181
    :try_start_15
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PGM:Lorg/apache/sanselan/ImageFormat;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz p0, :cond_14

    .line 205
    :try_start_16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    goto :goto_a

    :catch_a
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_14
    :goto_a
    return-object v0

    :cond_15
    if-ne v0, v5, :cond_17

    const/16 v4, 0x33

    if-ne v1, v4, :cond_17

    .line 183
    :try_start_17
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PPM:Lorg/apache/sanselan/ImageFormat;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-eqz p0, :cond_16

    .line 205
    :try_start_18
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_b

    goto :goto_b

    :catch_b
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_16
    :goto_b
    return-object v0

    :cond_17
    if-ne v0, v5, :cond_19

    const/16 v4, 0x36

    if-ne v1, v4, :cond_19

    .line 185
    :try_start_19
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PPM:Lorg/apache/sanselan/ImageFormat;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz p0, :cond_18

    .line 205
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_c

    goto :goto_c

    :catch_c
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_18
    :goto_c
    return-object v0

    :cond_19
    const/16 v4, 0x97

    if-ne v0, v4, :cond_1c

    const/16 v0, 0x4a

    if-ne v1, v0, :cond_1c

    .line 188
    :try_start_1b
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 189
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v0, :cond_1b

    if-ltz v1, :cond_1b

    and-int/2addr v0, v2

    and-int/2addr v1, v2

    if-ne v0, v6, :cond_1c

    if-ne v1, v3, :cond_1c

    .line 198
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_JBIG2:Lorg/apache/sanselan/ImageFormat;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-eqz p0, :cond_1a

    .line 205
    :try_start_1c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_d

    goto :goto_d

    :catch_d
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_d
    return-object v0

    .line 191
    :cond_1b
    :try_start_1d
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "Couldn\'t read magic numbers to guess format."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1c
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_UNKNOWN:Lorg/apache/sanselan/ImageFormat;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    if-eqz p0, :cond_1d

    .line 205
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_e

    goto :goto_e

    :catch_e
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_e
    return-object v0

    .line 147
    :cond_1e
    :try_start_1f
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "Couldn\'t read magic numbers to guess format."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_f

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_f
    if-eqz p0, :cond_1f

    .line 205
    :try_start_20
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_f

    goto :goto_10

    :catch_f
    move-exception p0

    .line 208
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 210
    :cond_1f
    :goto_10
    throw v0
.end method

.method public static guessFormat([B)Lorg/apache/sanselan/ImageFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->guessFormat(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageFormat;

    move-result-object p0

    return-object p0
.end method

.method public static hasImageFileExtension(Ljava/io/File;)Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->hasImageFileExtension(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasImageFileExtension(Ljava/lang/String;)Z
    .locals 6

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {}, Lorg/apache/sanselan/ImageParser;->getAllImageParsers()[Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 92
    aget-object v3, v0, v2

    .line 93
    invoke-virtual {v3}, Lorg/apache/sanselan/ImageParser;->getAcceptedExtensions()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 95
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 96
    aget-object v5, v3, v4

    .line 97
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static writeImage(Ljava/awt/image/BufferedImage;Ljava/io/File;Lorg/apache/sanselan/ImageFormat;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1295
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1296
    :try_start_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1298
    :try_start_2
    invoke-static {p0, v0, p2, p3}, Lorg/apache/sanselan/Sanselan;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/sanselan/ImageFormat;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1302
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1304
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_0

    .line 1302
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1304
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 1305
    :cond_0
    :goto_2
    throw p0
.end method

.method public static writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/sanselan/ImageFormat;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1365
    invoke-static {}, Lorg/apache/sanselan/ImageParser;->getAllImageParsers()[Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    if-nez p3, :cond_0

    .line 1369
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v1, "FORMAT"

    .line 1371
    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1373
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1374
    aget-object v2, v0, v1

    .line 1376
    invoke-virtual {v2, p2}, Lorg/apache/sanselan/ImageParser;->canAcceptType(Lorg/apache/sanselan/ImageFormat;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1379
    :cond_1
    invoke-virtual {v2, p0, p1, p3}, Lorg/apache/sanselan/ImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void

    .line 1383
    :cond_2
    new-instance p0, Lorg/apache/sanselan/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Unknown Format: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeImageToBytes(Ljava/awt/image/BufferedImage;Lorg/apache/sanselan/ImageFormat;Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1333
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1335
    invoke-static {p0, v0, p1, p2}, Lorg/apache/sanselan/Sanselan;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/sanselan/ImageFormat;Ljava/util/Map;)V

    .line 1337
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
