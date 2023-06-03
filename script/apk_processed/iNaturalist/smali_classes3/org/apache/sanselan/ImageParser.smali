.class public abstract Lorg/apache/sanselan/ImageParser;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "ImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/SanselanConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    return-void
.end method

.method public static final getAllImageParsers()[Lorg/apache/sanselan/ImageParser;
    .locals 3

    const/16 v0, 0x8

    .line 52
    new-array v0, v0, [Lorg/apache/sanselan/ImageParser;

    new-instance v1, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/sanselan/formats/tiff/TiffImageParser;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/sanselan/formats/png/PngImageParser;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/png/PngImageParser;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/sanselan/formats/bmp/BmpImageParser;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/sanselan/formats/gif/GifImageParser;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/gif/GifImageParser;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/sanselan/formats/psd/PsdImageParser;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/sanselan/formats/pnm/PNMImageParser;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/sanselan/formats/ico/IcoImageParser;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/ico/IcoImageParser;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static final isStrict(Ljava/util/Map;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "STRICT"

    .line 414
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "STRICT"

    .line 416
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected final canAcceptExtension(Ljava/io/File;)Z
    .locals 0

    .line 376
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final canAcceptExtension(Ljava/lang/String;)Z
    .locals 5

    .line 381
    invoke-virtual {p0}, Lorg/apache/sanselan/ImageParser;->getAcceptedExtensions()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x2e

    .line 385
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    .line 388
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 391
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 392
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public canAcceptType(Lorg/apache/sanselan/ImageFormat;)Z
    .locals 4

    .line 366
    invoke-virtual {p0}, Lorg/apache/sanselan/ImageParser;->getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 368
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 369
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lorg/apache/sanselan/ImageFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final dumpImageFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 329
    :cond_0
    iget-boolean v0, p0, Lorg/apache/sanselan/ImageParser;->debug:Z

    if-eqz v0, :cond_1

    .line 330
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sanselan/ImageParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    :cond_1
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/ImageParser;->dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 339
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 341
    invoke-virtual {p0, v1, p1}, Lorg/apache/sanselan/ImageParser;->dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z

    .line 343
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 345
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final dumpImageFile([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/ImageParser;->dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public abstract embedICCProfile(Ljava/io/File;Ljava/io/File;[B)Z
.end method

.method protected abstract getAcceptedExtensions()[Ljava/lang/String;
.end method

.method protected abstract getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
.end method

.method public final getAllBufferedImages(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 172
    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/ImageParser;->getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getAllBufferedImages([B)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/ImageParser;->getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final getBufferedImage(Ljava/io/File;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 231
    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public abstract getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getBufferedImage([BLjava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method protected getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;
    .locals 1

    if-nez p1, :cond_0

    .line 401
    new-instance p1, Lorg/apache/sanselan/common/SimpleBufferedImageFactory;

    invoke-direct {p1}, Lorg/apache/sanselan/common/SimpleBufferedImageFactory;-><init>()V

    return-object p1

    :cond_0
    const-string v0, "BUFFERED_IMAGE_FACTORY"

    .line 403
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/common/IBufferedImageFactory;

    if-eqz p1, :cond_1

    return-object p1

    .line 409
    :cond_1
    new-instance p1, Lorg/apache/sanselan/common/SimpleBufferedImageFactory;

    invoke-direct {p1}, Lorg/apache/sanselan/common/SimpleBufferedImageFactory;-><init>()V

    return-object p1
.end method

.method public abstract getDefaultExtension()Ljava/lang/String;
.end method

.method public final getFormatCompliance(Ljava/io/File;)Lorg/apache/sanselan/FormatCompliance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 145
    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/ImageParser;->getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;

    move-result-object p1

    return-object p1
.end method

.method public getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getFormatCompliance([B)Lorg/apache/sanselan/FormatCompliance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/ImageParser;->getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;

    move-result-object p1

    return-object p1
.end method

.method public final getICCProfileBytes(Ljava/io/File;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B

    move-result-object p1

    return-object p1
.end method

.method public final getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_0
    iget-boolean v0, p0, Lorg/apache/sanselan/ImageParser;->debug:Z

    if-eqz v0, :cond_1

    .line 309
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sanselan/ImageParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    :cond_1
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getICCProfileBytes([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getICCProfileBytes([BLjava/util/Map;)[B

    move-result-object p1

    return-object p1
.end method

.method public final getICCProfileBytes([BLjava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B

    move-result-object p1

    return-object p1
.end method

.method public final getImageInfo(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public abstract getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getImageInfo([BLjava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getImageSize(Ljava/io/File;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public final getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 275
    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public abstract getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getImageSize([B)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public final getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public final getMetadata(Ljava/io/File;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lorg/apache/sanselan/ImageParser;->debug:Z

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sanselan/ImageParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ".getMetadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 100
    :cond_1
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public abstract getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getMetadata([B)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->getMetadata([B)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final getMetadata([BLjava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    :try_start_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 242
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 245
    :goto_0
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "This image format ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/sanselan/ImageParser;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ") cannot be written."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
