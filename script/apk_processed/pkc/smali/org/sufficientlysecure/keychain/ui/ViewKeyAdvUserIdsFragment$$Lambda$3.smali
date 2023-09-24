.class final synthetic Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

.field private final arg$2:Z

.field private final arg$3:Z


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;ZZ)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$3;->arg$2:Z

    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$3;->arg$3:Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$3;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;ZZ)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 6

    move-object/16 v3, p0

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$3;->arg$2:Z

    iget-boolean v2, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$3;->arg$3:Z

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->lambda$showUserIdInfo$3$ViewKeyAdvUserIdsFragment(ZZ)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$3;--->run()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
