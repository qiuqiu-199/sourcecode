.class abstract Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;
.super Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;
.source "$AutoValue_AuthenticationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;
    }
.end annotation


# instance fields
.field private final allowedAuthenticationKeyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final authenticationMasterKeyId:J

.field private final authenticationSubKeyId:Ljava/lang/Long;

.field private final hashAlgorithm:I


# direct methods
.method constructor <init>(JLjava/lang/Long;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    .line 20
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;-><init>()V

    .line 21
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->authenticationMasterKeyId:J

    if-nez p0, :cond_0

    .line 23
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null authenticationSubKeyId"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_0
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->authenticationSubKeyId:Ljava/lang/Long;

    .line 26
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->allowedAuthenticationKeyIds:Ljava/util/List;

    .line 27
    iput p2, v0, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->hashAlgorithm:I

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;---><init>(JLjava/lang/Long;Ljava/util/List;I)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 66
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 67
    check-cast v8, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

    .line 68
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->authenticationMasterKeyId:J

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;->getAuthenticationMasterKeyId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->authenticationSubKeyId:Ljava/lang/Long;

    .line 69
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;->getAuthenticationSubKeyId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->allowedAuthenticationKeyIds:Ljava/util/List;

    if-nez v1, :cond_1

    .line 70
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;->getAllowedAuthenticationKeyIds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->allowedAuthenticationKeyIds:Ljava/util/List;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;->getAllowedAuthenticationKeyIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget v1, v7, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->hashAlgorithm:I

    .line 71
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;->getHashAlgorithm()I

    move-result v8

    if-ne v1, v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAllowedAuthenticationKeyIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 43
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->allowedAuthenticationKeyIds:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;--->getAllowedAuthenticationKeyIds()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAuthenticationMasterKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 32
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->authenticationMasterKeyId:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;--->getAuthenticationMasterKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAuthenticationSubKeyId()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 37
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->authenticationSubKeyId:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;--->getAuthenticationSubKeyId()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getHashAlgorithm()I
    .locals 4

    move-object/16 v1, p0

    .line 48
    iget v0, v1, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->hashAlgorithm:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;--->getHashAlgorithm()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 80
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->authenticationMasterKeyId:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, v6, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->authenticationMasterKeyId:J

    xor-long v4, v0, v2

    long-to-int v0, v4

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 82
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->authenticationSubKeyId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 84
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->allowedAuthenticationKeyIds:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->allowedAuthenticationKeyIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 86
    iget v1, v6, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->hashAlgorithm:I

    xor-int/2addr v0, v1

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthenticationData{authenticationMasterKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->authenticationMasterKeyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", authenticationSubKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->authenticationSubKeyId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allowedAuthenticationKeyIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->allowedAuthenticationKeyIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;->hashAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
