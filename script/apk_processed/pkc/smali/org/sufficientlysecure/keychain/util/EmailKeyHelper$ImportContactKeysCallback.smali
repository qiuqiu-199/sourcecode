.class public abstract Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$ImportContactKeysCallback;
.super Ljava/lang/Object;
.source "EmailKeyHelper.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ImportContactKeysCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            ")V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 59
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$ImportContactKeysCallback;->this$0:Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-static {v3, v0, p2}, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;->getEmailKeys(Landroid/content/Context;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 66
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p0

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    .line 68
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getFingerprint()[B

    move-result-object p2

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getKeyIdHex()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p2, p0, v0, v0}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->createFromReference([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_1
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$ImportContactKeysCallback;->mKeyList:Ljava/util/ArrayList;

    .line 71
    iput-object p1, v1, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$ImportContactKeysCallback;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$ImportContactKeysCallback;---><init>(Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;Landroid/content/Context;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 55
    new-instance v0, Lorg/sufficientlysecure/keychain/util/ContactHelper;

    invoke-direct {v0, v9}, Lorg/sufficientlysecure/keychain/util/ContactHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getContactMails()Ljava/util/List;

    move-result-object v4

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$ImportContactKeysCallback;-><init>(Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$ImportContactKeysCallback;---><init>(Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;Landroid/content/Context;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$ImportContactKeysCallback;->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 5

    move-object/16 v2, p0

    .line 76
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$ImportContactKeysCallback;->mKeyList:Ljava/util/ArrayList;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$ImportContactKeysCallback;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createImportKeyringParcel(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$ImportContactKeysCallback;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
