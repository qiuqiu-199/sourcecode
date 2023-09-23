.class public Lorg/sufficientlysecure/keychain/util/CharsetVerifier;
.super Ljava/lang/Object;
.source "CharsetVerifier.java"


# instance fields
.field private final bufWrap:Ljava/nio/ByteBuffer;

.field private charset:Ljava/lang/String;

.field private final charsetDecoder:Ljava/nio/charset/CharsetDecoder;

.field private final dummyOutput:Ljava/nio/CharBuffer;

.field private isFaulty:Z

.field private isFinished:Z

.field private isGuessed:Z

.field private isPossibleTextMimeType:Z

.field private isTextMimeType:Z

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    .line 55
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v5, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->mimeType:Ljava/lang/String;

    const-string v0, "text/*"

    .line 58
    invoke-static {v5, v0}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isTextMimeType:Z

    .line 59
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isTextMimeType:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "application/octet-stream"

    .line 60
    invoke-static {v5, v0}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-download"

    .line 61
    invoke-static {v5, v0}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isPossibleTextMimeType:Z

    .line 62
    iget-boolean v5, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isPossibleTextMimeType:Z

    if-nez v5, :cond_2

    const/4 v4, 0x0

    .line 63
    iput-object v4, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    .line 64
    iput-object v4, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->bufWrap:Ljava/nio/ByteBuffer;

    .line 65
    iput-object v4, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->dummyOutput:Ljava/nio/CharBuffer;

    return-void

    .line 69
    :cond_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->bufWrap:Ljava/nio/ByteBuffer;

    .line 70
    array-length v4, v4

    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->dummyOutput:Ljava/nio/CharBuffer;

    if-eqz p0, :cond_4

    const-string v4, "us-ascii"

    .line 73
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 77
    :cond_3
    iput-boolean v2, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isGuessed:Z

    goto :goto_3

    :cond_4
    :goto_2
    const-string p0, "utf-8"

    .line 75
    iput-boolean v1, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isGuessed:Z

    .line 79
    :goto_3
    iput-object p0, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->charset:Ljava/lang/String;

    .line 81
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    .line 82
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 83
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 84
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/CharsetVerifier;---><init>([BLjava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private finishIfNecessary()V
    .locals 7

    move-object/16 v4, p0

    .line 105
    iget-boolean v0, v4, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isFinished:Z

    if-nez v0, :cond_2

    iget-boolean v0, v4, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isFaulty:Z

    if-nez v0, :cond_2

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->bufWrap:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, v4, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isFinished:Z

    .line 109
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->bufWrap:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 110
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->bufWrap:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 111
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->dummyOutput:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 112
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->bufWrap:Ljava/nio/ByteBuffer;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->dummyOutput:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iput-boolean v0, v4, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isFaulty:Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/util/CharsetVerifier;--->finishIfNecessary()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 139
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->finishIfNecessary()V

    .line 140
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isPossibleTextMimeType:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isGuessed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isFaulty:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->charset:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/CharsetVerifier;--->getCharset()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getGuessedMimeType()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 119
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isTextMimeType:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->mimeType:Ljava/lang/String;

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isProbablyText()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "text/plain"

    return-object v0

    .line 125
    :cond_1
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->mimeType:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/CharsetVerifier;--->getGuessedMimeType()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMaybeFaultyCharset()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 147
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->charset:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/CharsetVerifier;--->getMaybeFaultyCharset()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isCharsetFaulty()Z
    .locals 4

    move-object/16 v1, p0

    .line 129
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->finishIfNecessary()V

    .line 130
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isFaulty:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/CharsetVerifier;--->isCharsetFaulty()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isCharsetGuessed()Z
    .locals 4

    move-object/16 v1, p0

    .line 134
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->finishIfNecessary()V

    .line 135
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isGuessed:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/CharsetVerifier;--->isCharsetGuessed()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isDefinitelyBinary()Z
    .locals 4

    move-object/16 v1, p0

    .line 156
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->finishIfNecessary()V

    .line 157
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isTextMimeType:Z

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isPossibleTextMimeType:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isGuessed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isFaulty:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/CharsetVerifier;--->isDefinitelyBinary()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isProbablyText()Z
    .locals 4

    move-object/16 v1, p0

    .line 168
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->finishIfNecessary()V

    .line 169
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isTextMimeType:Z

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isPossibleTextMimeType:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isGuessed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isFaulty:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/CharsetVerifier;--->isProbablyText()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public readBytesFromBuffer(II)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move/16 v4, p2

    .line 88
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isFinished:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cannot write again after reading charset status!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_0
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isFaulty:Z

    if-nez v0, :cond_3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->bufWrap:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->bufWrap:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 95
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->bufWrap:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->bufWrap:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 97
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->dummyOutput:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 98
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v4, v2, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->bufWrap:Ljava/nio/ByteBuffer;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->dummyOutput:Ljava/nio/CharBuffer;

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 100
    iput-boolean v3, v2, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isFaulty:Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/CharsetVerifier;--->readBytesFromBuffer(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
