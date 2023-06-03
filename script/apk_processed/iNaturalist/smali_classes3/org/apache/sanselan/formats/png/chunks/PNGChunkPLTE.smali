.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;
.super Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.source "PNGChunkPLTE.java"


# instance fields
.field public final rgb:[I


# direct methods
.method public constructor <init>(III[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    .line 34
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 36
    rem-int/lit8 p3, p1, 0x3

    if-nez p3, :cond_1

    .line 39
    div-int/lit8 p1, p1, 0x3

    .line 41
    new-array p3, p1, [I

    iput-object p3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "red["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not a Valid Png File: PLTE Corrupt"

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    .line 47
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "green["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not a Valid Png File: PLTE Corrupt"

    invoke-virtual {p0, v1, p2, v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    .line 49
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "blue["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not a Valid Png File: PLTE Corrupt"

    invoke-virtual {p0, v2, p2, v3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    .line 51
    iget-object v3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    const/high16 v4, -0x1000000

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    aput v0, v3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 37
    :cond_1
    new-instance p2, Lorg/apache/sanselan/ImageReadException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "PLTE: wrong length: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public correct(Lorg/apache/sanselan/formats/png/GammaCorrection;)V
    .locals 3

    const/4 v0, 0x0

    .line 77
    :goto_0
    iget-object v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    iget-object v2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctARGB(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getRGB(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 58
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    aget p1, v0, p1

    return p1

    .line 59
    :cond_0
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PNG: unknown Palette reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
