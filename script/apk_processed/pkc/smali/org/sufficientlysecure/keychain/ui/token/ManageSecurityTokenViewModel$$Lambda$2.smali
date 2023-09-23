.class final synthetic Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$2;->arg$1:Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$2;---><init>(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static get$Lambda(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;)Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;
    .locals 4

    move-object/16 v1, p0

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$2;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$2;--->get$Lambda(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;)Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public loadData()Ljava/lang/Object;
    .locals 4

    move-object/16 v1, p0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$2;->arg$1:Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->retrieveKeyserver()Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$2;--->loadData()Ljava/lang/Object;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
