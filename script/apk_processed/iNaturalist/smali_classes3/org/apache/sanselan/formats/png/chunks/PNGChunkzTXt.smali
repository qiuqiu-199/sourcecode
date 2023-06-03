.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;
.super Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;
.source "PNGChunkzTXt.java"


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(III[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;-><init>(III[B)V

    .line 37
    invoke-virtual {p0, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->findNull([B)I

    move-result p1

    if-ltz p1, :cond_1

    .line 42
    new-instance p2, Ljava/lang/String;

    const-string p3, "ISO-8859-1"

    const/4 v0, 0x0

    invoke-direct {p2, p4, v0, p1, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->keyword:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p1, 0x1

    .line 45
    aget-byte p1, p4, p1

    if-nez p1, :cond_0

    .line 51
    array-length p1, p4

    sub-int/2addr p1, p2

    .line 52
    new-array p3, p1, [B

    .line 53
    invoke-static {p4, p2, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    new-instance p1, Ljava/lang/String;

    new-instance p2, Lorg/apache/sanselan/common/ZLibUtils;

    invoke-direct {p2}, Lorg/apache/sanselan/common/ZLibUtils;-><init>()V

    invoke-virtual {p2, p3}, Lorg/apache/sanselan/common/ZLibUtils;->inflate([B)[B

    move-result-object p2

    const-string p3, "ISO-8859-1"

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->text:Ljava/lang/String;

    return-void

    .line 47
    :cond_0
    new-instance p2, Lorg/apache/sanselan/ImageReadException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "PNG zTXt chunk has unexpected compression method: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 39
    :cond_1
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PNG zTXt chunk keyword is unterminated."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getContents()Lorg/apache/sanselan/formats/png/PngText;
    .locals 3

    .line 79
    new-instance v0, Lorg/apache/sanselan/formats/png/PngText$zTXt;

    iget-object v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->keyword:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->text:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngText$zTXt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->text:Ljava/lang/String;

    return-object v0
.end method
