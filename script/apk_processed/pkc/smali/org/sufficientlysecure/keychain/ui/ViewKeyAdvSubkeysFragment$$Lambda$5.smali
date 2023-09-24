.class final synthetic Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

.field private final arg$2:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Landroid/os/Messenger;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$5;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$5;->arg$2:Landroid/os/Messenger;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$5;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Landroid/os/Messenger;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 5

    move-object/16 v2, p0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$5;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$5;->arg$2:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->lambda$editSubkey$3$ViewKeyAdvSubkeysFragment(Landroid/os/Messenger;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$5;--->run()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
