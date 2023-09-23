.class public Lorg/bouncycastle/util/io/pem/PemWriter;
.super Ljava/io/BufferedWriter;
.source "PemWriter.java"


# instance fields
.field private buf:[C

.field private final nlLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/16 p1, 0x40

    .line 20
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/bouncycastle/util/io/pem/PemWriter;->buf:[C

    .line 31
    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 38
    iput p1, p0, Lorg/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    :goto_0
    return-void
.end method

.method private writeEncoded([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 105
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 109
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/util/io/pem/PemWriter;->buf:[C

    array-length v3, v3

    if-eq v2, v3, :cond_1

    add-int v3, v1, v2

    .line 111
    array-length v4, p1

    if-lt v3, v4, :cond_0

    goto :goto_2

    .line 115
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/util/io/pem/PemWriter;->buf:[C

    aget-byte v3, p1, v3

    int-to-char v3, v3

    aput-char v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    :cond_1
    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/util/io/pem/PemWriter;->buf:[C

    invoke-virtual {p0, v3, v0, v2}, Lorg/bouncycastle/util/io/pem/PemWriter;->write([CII)V

    .line 119
    invoke-virtual {p0}, Lorg/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 105
    iget-object v2, p0, Lorg/bouncycastle/util/io/pem/PemWriter;->buf:[C

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writePostEncapsulationBoundary(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-----"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lorg/bouncycastle/util/io/pem/PemWriter;->newLine()V

    return-void
.end method

.method private writePreEncapsulationBoundary(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-----"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lorg/bouncycastle/util/io/pem/PemWriter;->newLine()V

    return-void
.end method


# virtual methods
.method public writeObject(Lorg/bouncycastle/util/io/pem/PemObjectGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-interface {p1}, Lorg/bouncycastle/util/io/pem/PemObjectGenerator;->generate()Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/io/pem/PemWriter;->writePreEncapsulationBoundary(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/util/io/pem/PemHeader;

    .line 87
    invoke-virtual {v1}, Lorg/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    const-string v2, ": "

    .line 88
    invoke-virtual {p0, v2}, Lorg/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Lorg/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lorg/bouncycastle/util/io/pem/PemWriter;->newLine()V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 96
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/io/pem/PemWriter;->writeEncoded([B)V

    .line 97
    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/util/io/pem/PemWriter;->writePostEncapsulationBoundary(Ljava/lang/String;)V

    return-void
.end method
