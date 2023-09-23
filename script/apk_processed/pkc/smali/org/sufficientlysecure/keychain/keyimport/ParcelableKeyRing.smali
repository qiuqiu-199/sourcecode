.class public abstract Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;
.super Ljava/lang/Object;
.source "ParcelableKeyRing.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createFromEncodedBytes([B)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;
    .locals 10

    move-object/16 v7, p0

    .line 49
    new-instance v6, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;-><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;--->createFromEncodedBytes([B)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createFromReference([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move-object/16 p0, p3

    .line 54
    new-instance v6, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;-><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;--->createFromReference([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getBytes()[B
.end method

.method public abstract getExpectedFingerprint()[B
.end method

.method public abstract getFbUsername()Ljava/lang/String;
.end method

.method public abstract getKeyIdHex()Ljava/lang/String;
.end method

.method public abstract getKeybaseName()Ljava/lang/String;
.end method
