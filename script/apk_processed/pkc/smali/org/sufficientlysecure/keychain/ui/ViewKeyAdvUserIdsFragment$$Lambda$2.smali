.class final synthetic Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

.field private final arg$2:Landroid/os/Messenger;

.field private final arg$3:Z

.field private final arg$4:Z


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Landroid/os/Messenger;ZZ)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$2;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$2;->arg$2:Landroid/os/Messenger;

    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$2;->arg$3:Z

    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$2;->arg$4:Z

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$2;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Landroid/os/Messenger;ZZ)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 7

    move-object/16 v4, p0

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$2;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$2;->arg$2:Landroid/os/Messenger;

    iget-boolean v2, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$2;->arg$3:Z

    iget-boolean v3, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$2;->arg$4:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->lambda$editUserId$2$ViewKeyAdvUserIdsFragment(Landroid/os/Messenger;ZZ)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$2;--->run()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
