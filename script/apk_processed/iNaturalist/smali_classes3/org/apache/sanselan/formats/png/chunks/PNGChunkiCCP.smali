.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;
.super Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.source "PNGChunkiCCP.java"


# instance fields
.field public final CompressedProfile:[B

.field public final CompressionMethod:I

.field public final ProfileName:Ljava/lang/String;

.field public final UncompressedProfile:[B


# direct methods
.method public constructor <init>(III[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    .line 41
    invoke-virtual {p0, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->findNull([B)I

    move-result p1

    if-ltz p1, :cond_3

    .line 44
    new-array p2, p1, [B

    const/4 p3, 0x0

    .line 45
    invoke-static {p4, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->ProfileName:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    .line 48
    aget-byte p2, p4, p1

    iput p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->CompressionMethod:I

    .line 50
    array-length p2, p4

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p2, p1

    .line 51
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->CompressedProfile:[B

    .line 52
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->CompressedProfile:[B

    invoke-static {p4, p1, v0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "ProfileName: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->ProfileName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "ProfileName.length(): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->ProfileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "CompressionMethod: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->CompressionMethod:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "CompressedProfileLength: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "bytes.length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    :cond_0
    new-instance p1, Lorg/apache/sanselan/common/ZLibUtils;

    invoke-direct {p1}, Lorg/apache/sanselan/common/ZLibUtils;-><init>()V

    iget-object p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->CompressedProfile:[B

    invoke-virtual {p1, p2}, Lorg/apache/sanselan/common/ZLibUtils;->inflate([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->UncompressedProfile:[B

    .line 69
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 71
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "UncompressedProfile: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->UncompressedProfile:[B

    if-nez p3, :cond_1

    const-string p3, "null"

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length p4, p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 43
    :cond_3
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PNGChunkiCCP: No Profile Name"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
