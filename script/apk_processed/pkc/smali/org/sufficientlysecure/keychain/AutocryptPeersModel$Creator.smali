.class public interface abstract Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;
.super Ljava/lang/Object;
.source "AutocryptPeersModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/AutocryptPeersModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/AutocryptPeersModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZLjava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Z",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/Date;",
            "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;",
            ")TT;"
        }
    .end annotation
.end method
