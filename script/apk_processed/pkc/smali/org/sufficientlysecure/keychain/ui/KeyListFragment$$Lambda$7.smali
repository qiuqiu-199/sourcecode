.class final synthetic Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$7;->arg$1:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$7;---><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAction()V
    .locals 4

    move-object/16 v1, p0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$7;->arg$1:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->lambda$showClipboardDataSnackbar$4$KeyListFragment()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$7;--->onAction()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method