.class public abstract Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;
.super Ljava/lang/Object;
.source "ParcelableS2K.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromS2K(ILorg/bouncycastle/bcpg/S2K;)Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;
    .locals 11

    move/16 v8, p0

    move-object/16 v9, p1

    .line 55
    new-instance v7, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;

    .line 56
    invoke-virtual {v9}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result v2

    invoke-virtual {v9}, Lorg/bouncycastle/bcpg/S2K;->getHashAlgorithm()I

    move-result v3

    invoke-virtual {v9}, Lorg/bouncycastle/bcpg/S2K;->getIterationCount()J

    move-result-wide v4

    invoke-virtual {v9}, Lorg/bouncycastle/bcpg/S2K;->getIV()[B

    move-result-object v6

    move-object v0, v7

    move v1, v8

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;-><init>(IIIJ[B)V

    return-object v7

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;--->fromS2K(ILorg/bouncycastle/bcpg/S2K;)Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method abstract getEncryptionAlgorithm()I
.end method

.method abstract getS2kHashAlgo()I
.end method

.method abstract getS2kIV()[B
.end method

.method abstract getS2kItCount()J
.end method

.method abstract getS2kType()I
.end method

.method public abstract hashCode()I
.end method
