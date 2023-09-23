.class Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;
.super Ljava/lang/Object;
.source "WhiteSpaceReader.java"


# instance fields
.field count:I

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->count:I

    .line 28
    iput-object p1, p0, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->is:Ljava/io/InputStream;

    return-void
.end method

.method private read()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    int-to-char v0, v0

    return v0

    .line 37
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PNM: Unexpected EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public nextChar()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->read()C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    :goto_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 49
    invoke-direct {p0}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->read()C

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public readtoWhiteSpace()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->nextChar()C

    move-result v0

    .line 59
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->nextChar()C

    move-result v0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->nextChar()C

    move-result v0

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
