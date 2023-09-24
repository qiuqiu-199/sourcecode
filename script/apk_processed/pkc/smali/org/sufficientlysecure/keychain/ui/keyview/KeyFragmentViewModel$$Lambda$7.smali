.class final synthetic Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;

.field private final arg$2:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

.field private final arg$3:Z


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$7;->arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$7;->arg$2:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$7;->arg$3:Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$7;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public loadData()Ljava/lang/Object;
    .locals 6

    move-object/16 v3, p0

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$7;->arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$7;->arg$2:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    iget-boolean v2, v3, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$7;->arg$3:Z

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->lambda$null$0$KeyFragmentViewModel(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$7;--->loadData()Ljava/lang/Object;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
