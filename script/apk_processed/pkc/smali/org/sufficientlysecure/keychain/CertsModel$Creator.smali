.class public interface abstract Lorg/sufficientlysecure/keychain/CertsModel$Creator;
.super Ljava/lang/Object;
.source "CertsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/CertsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/CertsModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;J[B)Lorg/sufficientlysecure/keychain/CertsModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;",
            "J[B)TT;"
        }
    .end annotation
.end method
