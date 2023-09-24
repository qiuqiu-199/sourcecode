.class final synthetic Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

.field private final arg$2:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$4;->arg$1:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$4;->arg$2:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$4;---><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$4;->arg$1:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$4;->arg$2:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->lambda$bindItemSuccess$5$DecryptListFragment$DecryptFilesAdapter(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;Landroid/view/View;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$4;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
