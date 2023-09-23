.class public interface abstract Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserIdsByMasterKeyIdAndVerificationModel;
.super Ljava/lang/Object;
.source "UserPacketsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/UserPacketsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelectUserIdsByMasterKeyIdAndVerificationModel"
.end annotation


# virtual methods
.method public abstract comment()Ljava/lang/String;
.end method

.method public abstract email()Ljava/lang/String;
.end method

.method public abstract is_primary()Z
.end method

.method public abstract is_revoked()Z
.end method

.method public abstract master_key_id()J
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract rank()I
.end method

.method public abstract user_id()Ljava/lang/String;
.end method

.method public abstract verified_int()Ljava/lang/Long;
.end method
