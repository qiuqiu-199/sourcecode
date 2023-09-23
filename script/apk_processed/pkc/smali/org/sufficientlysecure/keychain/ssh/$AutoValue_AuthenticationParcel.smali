.class abstract Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;
.super Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;
.source "$AutoValue_AuthenticationParcel.java"


# instance fields
.field private final authenticationData:Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

.field private final challenge:[B


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;[B)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 15
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;-><init>()V

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null authenticationData"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;->authenticationData:Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

    if-nez v2, :cond_1

    .line 21
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null challenge"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_1
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;->challenge:[B

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;---><init>(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;[B)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 50
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 51
    check-cast v5, Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;

    .line 52
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;->authenticationData:Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;->getAuthenticationData()Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;->challenge:[B

    instance-of v3, v5, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;

    if-eqz v3, :cond_1

    check-cast v5, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;->challenge:[B

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;->getChallenge()[B

    move-result-object v5

    :goto_0
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAuthenticationData()Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;
    .locals 4

    move-object/16 v1, p0

    .line 28
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;->authenticationData:Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;--->getAuthenticationData()Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getChallenge()[B
    .locals 4

    move-object/16 v1, p0

    .line 34
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;->challenge:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;--->getChallenge()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 5

    move-object/16 v2, p0

    .line 62
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;->authenticationData:Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 64
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;->challenge:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;--->hashCode()I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthenticationParcel{authenticationData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;->authenticationData:Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", challenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;->challenge:[B

    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
