.class final synthetic Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/core/util/Function;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$1;->arg$1:Landroid/content/Context;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$1;->arg$2:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$1;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$1;->arg$1:Landroid/content/Context;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$1;->arg$2:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;

    check-cast v3, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-static {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->lambda$getSubkeyStatus$3$KeyFragmentViewModel(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Landroid/arch/lifecycle/LiveData;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$1;--->apply(Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
