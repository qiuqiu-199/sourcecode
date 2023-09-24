.class final synthetic Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

.field private final arg$2:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

.field private final arg$3:I


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$$Lambda$0;->arg$2:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    iput p0, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$$Lambda$0;->arg$3:I

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$$Lambda$0;---><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$$Lambda$0;->arg$2:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    iget v2, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$$Lambda$0;->arg$3:I

    invoke-virtual {v0, v1, v2, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->lambda$displayBottomSheet$0$DecryptListFragment(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;ILandroid/view/MenuItem;)Z

    move-result v4

    return v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$$Lambda$0;--->onMenuItemClick(Landroid/view/MenuItem;)Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
