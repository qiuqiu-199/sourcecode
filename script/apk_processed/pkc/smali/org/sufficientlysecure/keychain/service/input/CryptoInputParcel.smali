.class public abstract Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
.super Ljava/lang/Object;
.source "CryptoInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 11

    .line 68
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v7

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->createCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 10

    move-object/16 v7, p0

    if-nez v7, :cond_0

    .line 85
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    :cond_0
    move-object v1, v7

    .line 87
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v7

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createCryptoInputParcel(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    if-nez v7, :cond_0

    .line 73
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    :cond_0
    move-object v1, v7

    .line 75
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    move-object v0, v7

    move-object v2, v8

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v7

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->createCryptoInputParcel(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createCryptoInputParcel(Ljava/util/Date;Z)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 10

    move-object/16 v7, p0

    move/16 v8, p1

    if-nez v7, :cond_0

    .line 97
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    :cond_0
    move-object v1, v7

    .line 99
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, v7

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v7

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->createCryptoInputParcel(Ljava/util/Date;Z)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createCryptoInputParcel(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 11

    move-object/16 v8, p0

    .line 92
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v7

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->createCryptoInputParcel(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createCryptoInputParcel(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 11

    move-object/16 v8, p0

    .line 80
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, v8

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v7

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->createCryptoInputParcel(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createCryptoInputParcel(Z)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 11

    move/16 v8, p0

    .line 104
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v7

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->createCryptoInputParcel(Z)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getCryptoData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;
.end method

.method public abstract getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;
.end method

.method public abstract getPassphraseSubkey()Ljava/lang/Long;
.end method

.method public abstract getSignatureTime()Ljava/util/Date;
.end method

.method public hasPassphraseForSubkey(J)Z
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 48
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphraseSubkey()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphraseSubkey()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->hasPassphraseForSubkey(J)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasPassphraseForSymmetric()Z
    .locals 4

    move-object/16 v1, p0

    .line 52
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphraseSubkey()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->hasPassphraseForSymmetric()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract isCachePassphrase()Z
.end method

.method public withCryptoData(Ljava/util/Map;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;)",
            "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"
        }
    .end annotation

    move-object/16 v9, p0

    move-object/16 v10, p1

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 121
    invoke-interface {v0, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 124
    new-instance v10, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v4

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphraseSubkey()Ljava/lang/Long;

    move-result-object v5

    .line 125
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->isCachePassphrase()Z

    move-result v6

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v7

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v10

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->withCryptoData(Ljava/util/Map;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public withCryptoData([B[B)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 111
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 114
    new-instance v9, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v3

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphraseSubkey()Ljava/lang/Long;

    move-result-object v4

    .line 115
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->isCachePassphrase()Z

    move-result v5

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v6

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v9

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->withCryptoData([B[B)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public withNoCachePassphrase()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 11

    move-object/16 v8, p0

    .line 137
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v2

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphraseSubkey()Ljava/lang/Long;

    move-result-object v3

    .line 138
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v5

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v7

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->withNoCachePassphrase()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public withParcelableProxy(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 149
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v2

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphraseSubkey()Ljava/lang/Long;

    move-result-object v3

    .line 150
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->isCachePassphrase()Z

    move-result v4

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v6

    move-object v0, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v7

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->withParcelableProxy(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public withPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    .line 131
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->isCachePassphrase()Z

    move-result v4

    .line 132
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v5

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v6

    move-object v0, v7

    move-object v2, v9

    move-object v3, v10

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v7

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->withPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public withSignatureTime(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 143
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v2

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphraseSubkey()Ljava/lang/Long;

    move-result-object v3

    .line 144
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->isCachePassphrase()Z

    move-result v4

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v5

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v6

    move-object v0, v7

    move-object v1, v9

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v7

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;--->withSignatureTime(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
