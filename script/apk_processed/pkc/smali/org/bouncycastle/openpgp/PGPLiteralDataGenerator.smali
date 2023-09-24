.class public Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;
.super Ljava/lang/Object;
.source "PGPLiteralDataGenerator.java"

# interfaces
.implements Lorg/bouncycastle/openpgp/StreamGenerator;


# static fields
.field public static final NOW:Ljava/util/Date;


# instance fields
.field private oldFormat:Z

.field private pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Lorg/bouncycastle/openpgp/PGPLiteralData;->NOW:Ljava/util/Date;

    sput-object v0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->NOW:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->oldFormat:Z

    return-void
.end method

.method private writeHeader(Ljava/io/OutputStream;C[BJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 89
    array-length p2, p3

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    const/4 p2, 0x0

    .line 91
    :goto_0
    array-length v0, p3

    if-eq p2, v0, :cond_0

    .line 93
    aget-byte v0, p3, p2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x3e8

    .line 96
    div-long/2addr p4, p2

    const/16 p2, 0x18

    shr-long p2, p4, p2

    long-to-int p2, p2

    int-to-byte p2, p2

    .line 98
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    const/16 p2, 0x10

    shr-long p2, p4, p2

    long-to-int p2, p2

    int-to-byte p2, p2

    .line 99
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    const/16 p2, 0x8

    shr-long p2, p4, p2

    long-to-int p2, p2

    int-to-byte p2, p2

    .line 100
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    long-to-int p2, p4

    int-to-byte p2, p2

    .line 101
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->finish()V

    .line 228
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->flush()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    :cond_0
    return-void
.end method

.method public open(Ljava/io/OutputStream;CLjava/lang/String;Ljava/util/Date;[B)Ljava/io/OutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    .line 175
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "generator already in open state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_0
    new-instance v0, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1, p5}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    .line 180
    invoke-static {p3}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 182
    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->writeHeader(Ljava/io/OutputStream;C[BJ)V

    .line 184
    new-instance p1, Lorg/bouncycastle/openpgp/WrappedGeneratorStream;

    iget-object p2, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/openpgp/WrappedGeneratorStream;-><init>(Ljava/io/OutputStream;Lorg/bouncycastle/openpgp/StreamGenerator;)V

    return-object p1
.end method
