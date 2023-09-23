.class public interface abstract Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdCreator;
.super Ljava/lang/Object;
.source "KeysModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeysModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelectSubkeysByMasterKeyIdCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(JJJLjava/lang/Integer;Ljava/lang/String;I[BZZZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;ZJLjava/lang/Long;)Lorg/sufficientlysecure/keychain/KeysModel$SelectSubkeysByMasterKeyIdModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "I[BZZZZZ",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;",
            "ZJ",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation
.end method
