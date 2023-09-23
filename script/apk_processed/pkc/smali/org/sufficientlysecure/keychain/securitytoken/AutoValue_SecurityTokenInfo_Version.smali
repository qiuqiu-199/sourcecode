.class final Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo_Version;
.super Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;
.source "AutoValue_SecurityTokenInfo_Version.java"


# instance fields
.field private final version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 12
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;-><init>()V

    if-nez v2, :cond_0

    .line 14
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null version"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo_Version;->version:Ljava/lang/String;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo_Version;---><init>(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    return v2

    .line 36
    :cond_0
    instance-of v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;

    if-eqz v0, :cond_1

    .line 37
    check-cast v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;

    .line 38
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo_Version;->version:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo_Version;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getVersion()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 21
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo_Version;->version:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo_Version;--->getVersion()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 5

    move-object/16 v2, p0

    .line 47
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo_Version;->version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo_Version;--->hashCode()I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo_Version;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo_Version;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
