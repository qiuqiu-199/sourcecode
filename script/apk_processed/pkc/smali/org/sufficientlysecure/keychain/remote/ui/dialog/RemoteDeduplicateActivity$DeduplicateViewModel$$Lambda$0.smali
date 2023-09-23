.class final synthetic Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;

.field private final arg$2:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel$$Lambda$0;->arg$2:Landroid/content/Context;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel$$Lambda$0;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;Landroid/content/Context;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public loadData()Ljava/lang/Object;
    .locals 5

    move-object/16 v2, p0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel$$Lambda$0;->arg$2:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->lambda$getKeyInfoLiveData$0$RemoteDeduplicateActivity$DeduplicateViewModel(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel$$Lambda$0;--->loadData()Ljava/lang/Object;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
