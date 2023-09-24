.class final Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;
.super Ljava/lang/Object;
.source "CloudSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/keyimport/CloudSearch;->search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$keyserverClient:Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;

.field final synthetic val$problems:Ljava/util/Vector;

.field final synthetic val$proxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$results:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Vector;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 64
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;->val$results:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;->val$keyserverClient:Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;->val$query:Ljava/lang/String;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;->val$proxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    iput-object p2, v0, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;->val$problems:Ljava/util/Vector;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;---><init>(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Vector;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 7

    move-object/16 v4, p0

    .line 68
    :try_start_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;->val$results:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;->val$keyserverClient:Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;->val$query:Ljava/lang/String;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;->val$proxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    invoke-interface {v1, v2, v3}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;->search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$CloudSearchFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;->val$problems:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 72
    :goto_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;->val$results:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->finishedAdding()V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;--->run()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
