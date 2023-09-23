.class public Lorg/sufficientlysecure/keychain/securitytoken/CardException;
.super Ljava/io/IOException;
.source "CardException.java"


# instance fields
.field private mResponseCode:S


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, -0x1

    .line 36
    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/CardException;---><init>(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 31
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    int-to-short v1, v2

    .line 32
    iput-short v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/CardException;->mResponseCode:S

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/CardException;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Ljava/lang/String;S)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 26
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 27
    iput-short v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/CardException;->mResponseCode:S

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/CardException;---><init>(Ljava/lang/String;S)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getResponseCode()S
    .locals 4

    move-object/16 v1, p0

    .line 40
    iget-short v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/CardException;->mResponseCode:S

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/CardException;--->getResponseCode()S"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
