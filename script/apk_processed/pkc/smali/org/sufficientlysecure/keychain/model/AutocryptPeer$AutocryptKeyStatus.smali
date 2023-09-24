.class public abstract Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;
.super Ljava/lang/Object;
.source "AutocryptPeer.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/model/AutocryptPeer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AutocryptKeyStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusModel<",
        "Lorg/sufficientlysecure/keychain/model/AutocryptPeer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public hasGossipKey()Z
    .locals 4

    move-object/16 v1, p0

    .line 27
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->autocryptPeer()Lorg/sufficientlysecure/keychain/AutocryptPeersModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer;->gossip_master_key_id()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;--->hasGossipKey()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isGossipKeyExpired()Z
    .locals 8

    move-object/16 v5, p0

    .line 36
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->gossip_key_is_expired_int()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;--->isGossipKeyExpired()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isGossipKeyRevoked()Z
    .locals 4

    move-object/16 v1, p0

    .line 31
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->gossip_key_is_revoked_int()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;--->isGossipKeyRevoked()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isGossipKeyVerified()Z
    .locals 8

    move-object/16 v5, p0

    .line 40
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->gossip_key_is_verified_int()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;--->isGossipKeyVerified()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isKeyExpired()Z
    .locals 8

    move-object/16 v5, p0

    .line 49
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->key_is_expired_int()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;--->isKeyExpired()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isKeyRevoked()Z
    .locals 4

    move-object/16 v1, p0

    .line 44
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->key_is_revoked_int()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;--->isKeyRevoked()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isKeyVerified()Z
    .locals 8

    move-object/16 v5, p0

    .line 53
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;->key_is_verified_int()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$AutocryptKeyStatus;--->isKeyVerified()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
