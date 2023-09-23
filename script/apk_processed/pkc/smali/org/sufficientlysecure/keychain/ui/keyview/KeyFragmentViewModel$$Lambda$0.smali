.class final synthetic Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/core/util/Function;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;

.field private final arg$3:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$0;->arg$1:Landroid/content/Context;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$0;->arg$2:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;

    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$0;->arg$3:Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$0;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$0;->arg$1:Landroid/content/Context;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$0;->arg$2:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;

    iget-boolean v2, v3, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$0;->arg$3:Z

    check-cast v4, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-static {v0, v1, v2, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->lambda$getIdentityInfo$1$KeyFragmentViewModel(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;ZLorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Landroid/arch/lifecycle/LiveData;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$0;--->apply(Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
