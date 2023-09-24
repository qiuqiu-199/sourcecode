.class final synthetic Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

.field private final arg$2:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

.field private final arg$3:J


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;J)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-wide/16 p0, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$3;->arg$2:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    iput-wide p0, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$3;->arg$3:J

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$3;---><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;J)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$3;->arg$2:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    iget-wide v2, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$3;->arg$3:J

    invoke-virtual {v0, v1, v2, v3, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->lambda$bindItemSuccess$3$DecryptListFragment$DecryptFilesAdapter(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;JLandroid/view/View;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$3;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
