.class public Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerScalarOps;
.super Ljava/lang/Object;
.source "BigIntegerScalarOps.java"

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/ScalarOps;


# instance fields
.field private final enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

.field private final l:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;Ljava/math/BigInteger;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerScalarOps;->l:Ljava/math/BigInteger;

    .line 25
    new-instance p2, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    invoke-direct {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerScalarOps;->enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    .line 26
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerScalarOps;->enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->setField(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;)V

    return-void
.end method


# virtual methods
.method public multiplyAndAdd([B[B[B)[B
    .locals 2

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerScalarOps;->enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerScalarOps;->enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->toBigInteger([B)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerScalarOps;->enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    invoke-virtual {v1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->toBigInteger([B)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerScalarOps;->enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    invoke-virtual {p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->toBigInteger([B)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerScalarOps;->l:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->encode(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public reduce([B)[B
    .locals 2

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerScalarOps;->enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerScalarOps;->enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->toBigInteger([B)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerScalarOps;->l:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->encode(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method
