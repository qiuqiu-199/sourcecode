.class final synthetic Lorg/sufficientlysecure/keychain/service/ProgressDialogManager$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

.field private final arg$2:Landroid/support/v4/app/FragmentManager;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager$$Lambda$0;->arg$2:Landroid/support/v4/app/FragmentManager;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/ProgressDialogManager$$Lambda$0;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;Landroid/support/v4/app/FragmentManager;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 5

    move-object/16 v2, p0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager$$Lambda$0;->arg$2:Landroid/support/v4/app/FragmentManager;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;->lambda$showProgressDialog$0$ProgressDialogManager(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;Landroid/support/v4/app/FragmentManager;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/ProgressDialogManager$$Lambda$0;--->run()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
