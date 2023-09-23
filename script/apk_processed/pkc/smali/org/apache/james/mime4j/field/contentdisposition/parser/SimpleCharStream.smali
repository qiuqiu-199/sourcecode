.class public Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    .line 288
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 2

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->column:I

    const/4 v1, 0x1

    .line 41
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->line:I

    .line 43
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 44
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 49
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->maxNextCharInd:I

    .line 50
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->inBuf:I

    const/16 v0, 0x8

    .line 51
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tabSize:I

    .line 274
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 275
    iput p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->line:I

    sub-int/2addr p3, v1

    .line 276
    iput p3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->column:I

    .line 278
    iput p4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->available:I

    .line 279
    new-array p1, p4, [C

    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    .line 280
    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufline:[I

    .line 281
    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufcolumn:[I

    return-void
.end method


# virtual methods
.method public BeginToken()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    .line 154
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v0

    .line 155
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    return v0
.end method

.method protected ExpandBuff(Z)V
    .locals 7

    .line 59
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v0, v0, 0x800

    new-array v0, v0, [C

    .line 60
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v1, v1, 0x800

    new-array v1, v1, [I

    .line 61
    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v2, v2, 0x800

    new-array v2, v2, [I

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 67
    :try_start_0
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iget v6, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    invoke-static {p1, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    invoke-static {p1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    .line 71
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufline:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-static {p1, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufline:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v4

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    invoke-static {p1, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufline:[I

    .line 75
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufcolumn:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v1, v4

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufcolumn:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufcolumn:[I

    .line 79
    iget p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->maxNextCharInd:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 83
    :cond_0
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iget v6, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    invoke-static {p1, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    .line 86
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufline:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-static {p1, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufline:[I

    .line 89
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufcolumn:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v1, v4

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufcolumn:[I

    .line 92
    iget p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    iget p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 p1, p1, 0x800

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    .line 102
    iget p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->available:I

    .line 103
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    return-void

    .line 97
    :goto_1
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected FillBuff()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->maxNextCharInd:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->available:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 110
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->available:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    const/16 v4, 0x800

    if-ne v0, v1, :cond_2

    .line 112
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    if-le v0, v4, :cond_0

    .line 114
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->maxNextCharInd:I

    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    .line 115
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->available:I

    goto :goto_0

    .line 117
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    if-gez v0, :cond_1

    .line 118
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->maxNextCharInd:I

    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 122
    :cond_2
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->available:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    if-le v0, v1, :cond_3

    .line 123
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->available:I

    goto :goto_0

    .line 124
    :cond_3
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->available:I

    sub-int/2addr v0, v1

    if-ge v0, v4, :cond_4

    .line 125
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 127
    :cond_4
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->available:I

    :cond_5
    :goto_0
    const/4 v0, -0x1

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->maxNextCharInd:I

    iget v6, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->available:I

    iget v7, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->maxNextCharInd:I

    sub-int/2addr v6, v7

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 134
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 135
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 138
    :cond_6
    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 142
    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    .line 143
    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->backup(I)V

    .line 144
    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    if-ne v2, v0, :cond_7

    .line 145
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    .line 146
    :cond_7
    throw v1
.end method

.method public GetImage()Ljava/lang/String;
    .locals 6

    .line 409
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSuffix(I)[C
    .locals 5

    .line 419
    new-array v0, p1, [C

    .line 421
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-lt v1, p1, :cond_0

    .line 422
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    sub-int v4, p1, v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    sub-int v4, p1, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr p1, v3

    add-int/lit8 p1, p1, -0x1

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0
.end method

.method protected UpdateLineColumn(C)V
    .locals 3

    .line 162
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->column:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->column:I

    .line 164
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->prevCharIsLF:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 166
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 167
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->line:I

    goto :goto_0

    .line 169
    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_2

    .line 171
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->prevCharIsCR:Z

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 174
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_0

    .line 177
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->line:I

    :cond_2
    :goto_0
    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 186
    :pswitch_0
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_1

    .line 189
    :pswitch_1
    iget p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->column:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->column:I

    .line 190
    iget p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->column:I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tabSize:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->column:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tabSize:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->column:I

    goto :goto_1

    .line 183
    :cond_3
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 196
    :goto_1
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufline:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->line:I

    aput v1, p1, v0

    .line 197
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufcolumn:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->column:I

    aput v1, p1, v0

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public backup(I)V
    .locals 1

    .line 265
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->inBuf:I

    .line 266
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_0

    .line 267
    iget p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    :cond_0
    return-void
.end method

.method public getBeginColumn()I
    .locals 2

    .line 254
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    .line 259
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    .line 244
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    .line 249
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public readChar()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->inBuf:I

    if-lez v0, :cond_1

    .line 205
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->inBuf:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->inBuf:I

    .line 207
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufsize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 208
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v0, v1

    return v0

    .line 213
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->maxNextCharInd:I

    if-lt v0, v1, :cond_2

    .line 214
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->FillBuff()V

    .line 216
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->buffer:[C

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v0, v1

    .line 218
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->UpdateLineColumn(C)V

    return v0
.end method
