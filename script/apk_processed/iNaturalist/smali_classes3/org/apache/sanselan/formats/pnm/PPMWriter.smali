.class public Lorg/apache/sanselan/formats/pnm/PPMWriter;
.super Lorg/apache/sanselan/formats/pnm/PNMWriter;
.source "PPMWriter.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/pnm/PNMWriter;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p3, 0x50

    .line 38
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 39
    iget-boolean p3, p0, Lorg/apache/sanselan/formats/pnm/PPMWriter;->RAWBITS:Z

    if-eqz p3, :cond_0

    const/16 p3, 0x36

    goto :goto_0

    :cond_0
    const/16 p3, 0x33

    :goto_0
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    const/16 p3, 0x20

    .line 40
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 42
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 45
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 46
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 48
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 49
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    const-string v2, "255"

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    const/16 v2, 0xa

    .line 52
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_2

    .line 57
    invoke-virtual {p1, v4, v3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v5, v2

    and-int/lit16 v5, v5, 0xff

    .line 62
    iget-boolean v8, p0, Lorg/apache/sanselan/formats/pnm/PPMWriter;->RAWBITS:Z

    if-eqz v8, :cond_1

    int-to-byte v6, v6

    .line 64
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v6, v7

    .line 65
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v5, v5

    .line 66
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    .line 70
    :cond_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 71
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 72
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 73
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 74
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 75
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
