.class final synthetic Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/DecryptFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/DecryptFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$2;->arg$1:Lorg/sufficientlysecure/keychain/ui/DecryptFragment;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$2;---><init>(Lorg/sufficientlysecure/keychain/ui/DecryptFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public loadData()Ljava/lang/Object;
    .locals 4

    move-object/16 v1, p0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$2;->arg$1:Lorg/sufficientlysecure/keychain/ui/DecryptFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->lambda$loadSignerKeyData$2$DecryptFragment()Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$2;--->loadData()Ljava/lang/Object;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
