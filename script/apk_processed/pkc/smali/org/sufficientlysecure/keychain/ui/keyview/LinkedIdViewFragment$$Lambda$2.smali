.class final synthetic Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$2;->arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$2;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 4

    move-object/16 v1, p0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$2;->arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->lambda$finishFragment$0$LinkedIdViewFragment()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$2;--->run()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
