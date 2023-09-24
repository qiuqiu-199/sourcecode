.class public interface abstract Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;
.super Ljava/lang/Object;
.source "KeyserverClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException;,
        Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNoEnabledSourceException;,
        Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortOrTooManyResponsesException;,
        Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortException;,
        Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$TooManyResponsesException;,
        Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNotImplementedException;,
        Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNeedsRepairException;,
        Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNotFoundException;,
        Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;,
        Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$CloudSearchFailureException;
    }
.end annotation


# virtual methods
.method public abstract add(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;
        }
    .end annotation
.end method

.method public abstract search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            ")",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;,
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNeedsRepairException;
        }
    .end annotation
.end method
