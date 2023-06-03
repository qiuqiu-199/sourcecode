.class public Lorg/apache/sanselan/formats/pnm/PBMWriter;
.super Lorg/apache/sanselan/formats/pnm/PNMWriter;
.source "PBMWriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/pnm/PNMConstants;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/pnm/PNMWriter;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p3, 0x50

    .line 36
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 37
    iget-boolean p3, p0, Lorg/apache/sanselan/formats/pnm/PBMWriter;->RAWBITS:Z

    if-eqz p3, :cond_0

    const/16 p3, 0x34

    goto :goto_0

    :cond_0
    const/16 p3, 0x31

    :goto_0
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    const/16 p3, 0x20

    .line 38
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 40
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 41
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 43
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

    .line 44
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 46
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

    .line 47
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    move v6, v4

    const/4 v4, 0x0

    :goto_2
    const/16 v7, 0x8

    if-ge v4, v0, :cond_4

    .line 56
    invoke-virtual {p1, v4, v3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v8

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v10, v8, 0x8

    and-int/lit16 v10, v10, 0xff

    shr-int/2addr v8, v2

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    .line 60
    div-int/lit8 v9, v9, 0x3

    const/16 v8, 0x7f

    if-le v9, v8, :cond_1

    const/4 v8, 0x0

    goto :goto_3

    :cond_1
    const/4 v8, 0x1

    .line 66
    :goto_3
    iget-boolean v9, p0, Lorg/apache/sanselan/formats/pnm/PBMWriter;->RAWBITS:Z

    if-eqz v9, :cond_2

    shl-int/lit8 v6, v6, 0x1

    and-int/lit8 v8, v8, 0x1

    or-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v7, :cond_3

    int-to-byte v5, v6

    .line 73
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_4

    .line 79
    :cond_2
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 80
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 84
    :cond_4
    iget-boolean v4, p0, Lorg/apache/sanselan/formats/pnm/PBMWriter;->RAWBITS:Z

    if-eqz v4, :cond_5

    if-lez v5, :cond_5

    sub-int/2addr v7, v5

    shl-int v4, v6, v7

    int-to-byte v4, v4

    .line 87
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    move v4, v6

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method
