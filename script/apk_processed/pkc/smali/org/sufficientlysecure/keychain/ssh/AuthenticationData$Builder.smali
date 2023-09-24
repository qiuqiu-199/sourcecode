.class public abstract Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;
.super Ljava/lang/Object;
.source "AuthenticationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 54
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract build()Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;
.end method

.method public setAllowedAuthenticationKeyIds(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;->setAllowedAuthenticationKeyIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;--->setAllowedAuthenticationKeyIds(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method abstract setAllowedAuthenticationKeyIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;"
        }
    .end annotation
.end method

.method public abstract setAuthenticationMasterKeyId(J)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;
.end method

.method public abstract setAuthenticationSubKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;
.end method

.method public abstract setHashAlgorithm(I)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;
.end method
