.class final synthetic Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

.field private final arg$2:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;Landroid/net/Uri;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$3;->arg$2:Landroid/net/Uri;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$3;---><init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;Landroid/net/Uri;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public loadData()Ljava/lang/Object;
    .locals 5

    move-object/16 v2, p0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$3;->arg$2:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->lambda$getKeyRetrievalContentUri$0$ManageSecurityTokenViewModel(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$3;--->loadData()Ljava/lang/Object;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
