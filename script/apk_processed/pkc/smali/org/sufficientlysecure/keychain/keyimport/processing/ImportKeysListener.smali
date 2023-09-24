.class public interface abstract Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;
.super Ljava/lang/Object;
.source "ImportKeysListener.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;


# virtual methods
.method public abstract importKeys(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadKeys(Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;)V
.end method
