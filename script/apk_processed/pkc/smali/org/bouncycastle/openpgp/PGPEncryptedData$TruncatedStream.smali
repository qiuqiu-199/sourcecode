.class public Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;
.super Ljava/io/InputStream;
.source "PGPEncryptedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openpgp/PGPEncryptedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TruncatedStream"
.end annotation


# instance fields
.field bufPtr:I

.field in:Ljava/io/InputStream;

.field lookAhead:[I

.field final synthetic this$0:Lorg/bouncycastle/openpgp/PGPEncryptedData;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/PGPEncryptedData;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->this$0:Lorg/bouncycastle/openpgp/PGPEncryptedData;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 p1, 0x16

    .line 28
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->lookAhead:[I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 36
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->lookAhead:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 38
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->lookAhead:[I

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v2

    aput v2, v1, v0

    if-gez v2, :cond_0

    .line 40
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    iput p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->bufPtr:I

    .line 45
    iput-object p2, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method getLookAhead()[I
    .locals 6

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->lookAhead:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 71
    iget v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->bufPtr:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->lookAhead:[I

    array-length v4, v4

    if-eq v1, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 73
    iget-object v5, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->lookAhead:[I

    aget v5, v5, v1

    aput v5, v0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    .line 75
    :cond_0
    :goto_1
    iget v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->bufPtr:I

    if-eq v2, v1, :cond_1

    add-int/lit8 v1, v3, 0x1

    .line 77
    iget-object v4, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->lookAhead:[I

    aget v4, v4, v2

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 55
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->lookAhead:[I

    iget v2, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->bufPtr:I

    aget v1, v1, v2

    .line 57
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->lookAhead:[I

    iget v3, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->bufPtr:I

    aput v0, v2, v3

    .line 58
    iget v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->bufPtr:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->lookAhead:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->bufPtr:I

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
