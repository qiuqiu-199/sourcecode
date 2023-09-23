.class final synthetic Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;

.field private final arg$2:Landroid/support/v4/app/DialogFragment;

.field private final arg$3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$9;->arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$9;->arg$2:Landroid/support/v4/app/DialogFragment;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$9;->arg$3:Ljava/lang/String;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$9;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 6

    move-object/16 v3, p0

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$9;->arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$9;->arg$2:Landroid/support/v4/app/DialogFragment;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$9;->arg$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->lambda$showDialogFragment$4$ViewKeyFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$9;--->run()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
