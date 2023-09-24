.class public interface abstract Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewCreator;
.super Ljava/lang/Object;
.source "KeysModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeysModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnifiedKeyViewCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(J[BJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZZLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;JJJJJLjava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[BJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "ZZZ",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;",
            "JJJJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
