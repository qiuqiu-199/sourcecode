.class public abstract Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;
.super Ljava/lang/Object;
.source "Encoding.java"


# instance fields
.field protected f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decode([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
.end method

.method public abstract encode(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)[B
.end method

.method public abstract isNegative(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Z
.end method

.method public declared-synchronized setField(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;)V
    .locals 1

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    if-eqz v0, :cond_0

    .line 25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    throw p1
.end method
