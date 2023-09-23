.class final synthetic Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

.field private final arg$2:Landroid/os/Messenger;

.field private final arg$3:Ljava/lang/Long;

.field private final arg$4:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Landroid/os/Messenger;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$6;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$6;->arg$2:Landroid/os/Messenger;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$6;->arg$3:Ljava/lang/Long;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$6;->arg$4:Ljava/lang/Long;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$6;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Landroid/os/Messenger;Ljava/lang/Long;Ljava/lang/Long;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 7

    move-object/16 v4, p0

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$6;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$6;->arg$2:Landroid/os/Messenger;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$6;->arg$3:Ljava/lang/Long;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$6;->arg$4:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->lambda$editSubkeyExpiry$4$ViewKeyAdvSubkeysFragment(Landroid/os/Messenger;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$6;--->run()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
