.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;
.super Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;
.source "PNGChunkiTXt.java"


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final languageTag:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final translatedKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(III[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;-><init>(III[B)V

    .line 48
    invoke-virtual {p0, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->findNull([B)I

    move-result p1

    if-ltz p1, :cond_9

    .line 53
    new-instance p2, Ljava/lang/String;

    const-string p3, "ISO-8859-1"

    const/4 v0, 0x0

    invoke-direct {p2, p4, v0, p1, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->keyword:Ljava/lang/String;

    const/4 p2, 0x1

    add-int/2addr p1, p2

    add-int/lit8 p3, p1, 0x1

    .line 56
    aget-byte p1, p4, p1

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance p2, Lorg/apache/sanselan/ImageReadException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "PNG iTXt chunk has invalid compression flag: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    add-int/lit8 v1, p3, 0x1

    .line 64
    aget-byte p3, p4, p3

    if-eqz p1, :cond_5

    if-nez p3, :cond_4

    if-nez p3, :cond_3

    goto :goto_2

    .line 71
    :cond_3
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "PNG iTXt chunk has unexpected compression method: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_4
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "PNG iTXt chunk has unexpected compression method: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_5
    :goto_2
    invoke-virtual {p0, p4, v1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->findNull([BI)I

    move-result p3

    if-ltz p3, :cond_8

    .line 80
    new-instance v2, Ljava/lang/String;

    sub-int v3, p3, v1

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, p4, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->languageTag:Ljava/lang/String;

    add-int/2addr p3, p2

    .line 84
    invoke-virtual {p0, p4, p3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->findNull([BI)I

    move-result v1

    if-ltz v1, :cond_7

    .line 89
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p3

    const-string v4, "utf-8"

    invoke-direct {v2, p4, p3, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->translatedKeyword:Ljava/lang/String;

    add-int/2addr v1, p2

    if-eqz p1, :cond_6

    .line 95
    array-length p1, p4

    sub-int/2addr p1, v1

    .line 97
    new-array p2, p1, [B

    .line 98
    invoke-static {p4, v1, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    new-instance p1, Ljava/lang/String;

    new-instance p3, Lorg/apache/sanselan/common/ZLibUtils;

    invoke-direct {p3}, Lorg/apache/sanselan/common/ZLibUtils;-><init>()V

    invoke-virtual {p3, p2}, Lorg/apache/sanselan/common/ZLibUtils;->inflate([B)[B

    move-result-object p2

    const-string p3, "utf-8"

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->text:Ljava/lang/String;

    goto :goto_3

    .line 105
    :cond_6
    new-instance p1, Ljava/lang/String;

    array-length p2, p4

    sub-int/2addr p2, v1

    const-string p3, "utf-8"

    invoke-direct {p1, p4, v1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->text:Ljava/lang/String;

    :goto_3
    return-void

    .line 86
    :cond_7
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PNG iTXt chunk translated keyword is not terminated."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_8
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PNG iTXt chunk language tag is not terminated."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_9
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PNG iTXt chunk keyword is not terminated."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getContents()Lorg/apache/sanselan/formats/png/PngText;
    .locals 5

    .line 127
    new-instance v0, Lorg/apache/sanselan/formats/png/PngText$iTXt;

    iget-object v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->keyword:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->text:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->languageTag:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->translatedKeyword:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/formats/png/PngText$iTXt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->text:Ljava/lang/String;

    return-object v0
.end method
