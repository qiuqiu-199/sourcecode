.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;
.super Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;
.source "PNGChunktEXt.java"


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

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;-><init>(III[B)V

    .line 33
    invoke-virtual {p0, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->findNull([B)I

    move-result p1

    if-ltz p1, :cond_1

    .line 38
    new-instance p2, Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "ISO-8859-1"

    invoke-direct {p2, p4, p3, p1, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->keyword:Ljava/lang/String;

    .line 40
    array-length p2, p4

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p2, p1

    .line 41
    new-instance p3, Ljava/lang/String;

    const-string v0, "ISO-8859-1"

    invoke-direct {p3, p4, p1, p2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->text:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Keyword: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->keyword:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Text: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->text:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 35
    :cond_1
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PNG tEXt chunk keyword is not terminated."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getContents()Lorg/apache/sanselan/formats/png/PngText;
    .locals 3

    .line 70
    new-instance v0, Lorg/apache/sanselan/formats/png/PngText$tEXt;

    iget-object v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->keyword:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->text:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngText$tEXt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->text:Ljava/lang/String;

    return-object v0
.end method
