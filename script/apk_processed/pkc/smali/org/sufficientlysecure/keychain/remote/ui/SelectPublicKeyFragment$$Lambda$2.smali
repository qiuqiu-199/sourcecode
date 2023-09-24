.class final synthetic Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment$$Lambda$2;->arg$1:Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment$$Lambda$2;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment$$Lambda$2;->arg$1:Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;

    check-cast v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    check-cast v3, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->lambda$sortKeysByPreselectionComparator$0$SelectPublicKeyFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)I

    move-result v2

    return v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment$$Lambda$2;--->compare(Ljava/lang/Object;Ljava/lang/Object;)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
