.class public abstract Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;
.super Ljava/lang/Object;
.source "AuthenticationData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static builder()Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;
    .locals 6

    .line 47
    new-instance v0, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;-><init>()V

    const-wide/16 v1, 0x0

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ssh/$AutoValue_AuthenticationData$Builder;->setAuthenticationMasterKeyId(J)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;

    move-result-object v0

    .line 49
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;->setAuthenticationSubKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;

    move-result-object v0

    const/16 v1, 0xa

    .line 50
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;->setHashAlgorithm(I)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;--->builder()Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getAllowedAuthenticationKeyIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthenticationMasterKeyId()J
.end method

.method public abstract getAuthenticationSubKeyId()Ljava/lang/Long;
.end method

.method public abstract getHashAlgorithm()I
.end method
