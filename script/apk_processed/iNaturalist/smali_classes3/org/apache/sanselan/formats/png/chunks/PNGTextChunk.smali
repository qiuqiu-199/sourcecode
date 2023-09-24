.class public abstract Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;
.super Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.source "PNGTextChunk.java"


# direct methods
.method public constructor <init>(III[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    return-void
.end method


# virtual methods
.method public abstract getContents()Lorg/apache/sanselan/formats/png/PngText;
.end method

.method public abstract getKeyword()Ljava/lang/String;
.end method

.method public abstract getText()Ljava/lang/String;
.end method
