.class final Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;
.super Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;
.source "$AutoValue_AuthenticationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private allowedAuthenticationKeyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private authenticationMasterKeyId:Ljava/lang/Long;

.field private authenticationSubKeyId:Ljava/lang/Long;

.field private hashAlgorithm:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 95
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public build()Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;
    .locals 11

    move-object/16 v8, p0

    const-string v0, ""

    .line 123
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;->authenticationMasterKeyId:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " authenticationMasterKeyId"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_0
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;->authenticationSubKeyId:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " authenticationSubKeyId"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_1
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;->hashAlgorithm:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " hashAlgorithm"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 133
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_3
    new-instance v0, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;->authenticationMasterKeyId:Ljava/lang/Long;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v8, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;->authenticationSubKeyId:Ljava/lang/Long;

    iget-object v6, v8, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;->allowedAuthenticationKeyIds:Ljava/util/List;

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;->hashAlgorithm:Ljava/lang/Integer;

    .line 139
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;-><init>(JLjava/lang/Long;Ljava/util/List;I)V

    return-object v0

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;--->build()Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setAllowedAuthenticationKeyIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 112
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;->allowedAuthenticationKeyIds:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;--->setAllowedAuthenticationKeyIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAuthenticationMasterKeyId(J)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;->authenticationMasterKeyId:Ljava/lang/Long;

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;--->setAuthenticationMasterKeyId(J)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAuthenticationSubKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 105
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null authenticationSubKeyId"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;->authenticationSubKeyId:Ljava/lang/Long;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;--->setAuthenticationSubKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setHashAlgorithm(I)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;->hashAlgorithm:Ljava/lang/Integer;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;--->setHashAlgorithm(I)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
