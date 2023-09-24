.class public Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;
.super Ljava/lang/Object;
.source "NfcTransport.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/securitytoken/Transport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport$IsoDepNotSupportedException;
    }
.end annotation


# static fields
.field private static final TIMEOUT:I = 0x186a0


# instance fields
.field private mIsoCard:Lnordpol/IsoCard;

.field private final mTag:Landroid/nfc/Tag;


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mTag:Landroid/nfc/Tag;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;---><init>(Landroid/nfc/Tag;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    .line 112
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mTag:Landroid/nfc/Tag;

    invoke-static {v0}, Lnordpol/android/AndroidCard;->get(Landroid/nfc/Tag;)Lnordpol/android/AndroidCard;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mIsoCard:Lnordpol/IsoCard;

    .line 113
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mIsoCard:Lnordpol/IsoCard;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport$IsoDepNotSupportedException;

    const-string v1, "Tag does not support ISO-DEP (ISO 14443-4)"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport$IsoDepNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mIsoCard:Lnordpol/IsoCard;

    const v1, 0x186a0

    invoke-interface {v0, v1}, Lnordpol/IsoCard;->setTimeout(I)V

    .line 118
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mIsoCard:Lnordpol/IsoCard;

    invoke-interface {v0}, Lnordpol/IsoCard;->connect()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;--->connect()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v4, v5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v5, :cond_6

    .line 136
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 138
    :cond_1
    check-cast v5, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;

    .line 140
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mTag:Landroid/nfc/Tag;

    if-eqz v2, :cond_2

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mTag:Landroid/nfc/Tag;

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mTag:Landroid/nfc/Tag;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 141
    :cond_3
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mIsoCard:Lnordpol/IsoCard;

    if-eqz v2, :cond_4

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mIsoCard:Lnordpol/IsoCard;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mIsoCard:Lnordpol/IsoCard;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_4
    iget-object v5, v5, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mIsoCard:Lnordpol/IsoCard;

    if-eqz v5, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getTokenTypeIfAvailable()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;--->getTokenTypeIfAvailable()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getTransportType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;
    .locals 4

    move-object/16 v1, p0

    .line 123
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;->NFC:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;--->getTransportType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 6

    move-object/16 v3, p0

    .line 149
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mTag:Landroid/nfc/Tag;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 150
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mIsoCard:Lnordpol/IsoCard;

    if-eqz v2, :cond_1

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mIsoCard:Lnordpol/IsoCard;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;--->hashCode()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isConnected()Z
    .locals 4

    move-object/16 v1, p0

    .line 88
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mIsoCard:Lnordpol/IsoCard;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mIsoCard:Lnordpol/IsoCard;

    invoke-interface {v0}, Lnordpol/IsoCard;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;--->isConnected()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isPersistentConnectionAllowed()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;--->isPersistentConnectionAllowed()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public release()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;--->release()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public transceive(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 65
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->toBytes()[B

    move-result-object v2

    .line 70
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;->mIsoCard:Lnordpol/IsoCard;

    invoke-interface {v0, v2}, Lnordpol/IsoCard;->transceive([B)[B

    move-result-object v2

    .line 75
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;--->transceive(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
